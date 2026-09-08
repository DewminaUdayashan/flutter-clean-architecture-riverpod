import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Safe replacement for [AsyncValue.when].
///
/// Riverpod 3 retries a provider that fails its first load, so a failed
/// provider settles as `AsyncLoading` *with the error attached*: `isLoading`
/// and `hasError` are both true and there is no value. Because
/// [AsyncValue.when] tests loading first, its `error` branch is unreachable
/// and the UI spins forever instead of showing the failure.
///
/// [whenSafe] resolves the state in the order the UI actually cares about:
/// a hard failure wins, then any value we can still render (so a refresh keeps
/// showing stale data instead of flashing a spinner), then loading.
extension AsyncValueX<T> on AsyncValue<T> {
  R whenSafe<R>({
    required R Function(T value) data,
    required R Function(Object error, StackTrace stackTrace) error,
    required R Function() loading,
  }) {
    if (hasError && !hasValue) {
      return error(this.error!, stackTrace ?? StackTrace.empty);
    }
    if (hasValue) return data(requireValue);
    return loading();
  }
}
