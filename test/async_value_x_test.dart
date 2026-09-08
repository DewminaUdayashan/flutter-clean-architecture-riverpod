import 'dart:io';

import 'package:flutter_clean_architecture/core/async/async_value_x.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

/// Fails on every load so the provider settles into Riverpod 3's
/// "loading *and* errored" state while it retries.
final _failing = FutureProvider<int>((ref) => Future.error(StateError('boom')));

/// Succeeds, so invalidating it produces a loading state that still carries the
/// previous value.
final _succeeding = FutureProvider<int>((ref) => Future.value(7));

String _branch(AsyncValue<int> state) => state.whenSafe(
  data: (value) => 'data:$value',
  error: (_, _) => 'error',
  loading: () => 'loading',
);

void main() {
  group('whenSafe', () {
    test('shows the error when a provider fails its first load', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      await expectLater(container.read(_failing.future), throwsStateError);
      final state = container.read(_failing);

      // Riverpod 3 retries with a backoff, so the failed provider is *also*
      // loading. This is exactly the state where AsyncValue.when would pick
      // its loading branch and spin forever.
      expect(state.hasError, isTrue);
      expect(state.hasValue, isFalse);
      expect(_branch(state), 'error');
    });

    test('keeps showing the previous value while refreshing', () async {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      await container.read(_succeeding.future);
      container.invalidate(_succeeding);
      final refreshing = container.read(_succeeding);

      expect(refreshing.isLoading, isTrue);
      expect(_branch(refreshing), 'data:7');
    });

    test('falls back to loading when there is nothing else to show', () {
      expect(_branch(const AsyncLoading<int>()), 'loading');
    });
  });

  test('no widget reaches for AsyncValue.when directly', () {
    final offenders = <String>[];
    for (final entity in Directory('lib').listSync(recursive: true)) {
      if (entity is! File || !entity.path.endsWith('.dart')) continue;
      if (entity.path.endsWith('.g.dart') ||
          entity.path.endsWith('.freezed.dart')) {
        continue;
      }
      final lines = entity.readAsLinesSync();
      for (var i = 0; i < lines.length; i++) {
        if (RegExp(r'\.when\(').hasMatch(lines[i])) {
          offenders.add('${entity.path}:${i + 1}');
        }
      }
    }
    expect(
      offenders,
      isEmpty,
      reason:
          'AsyncValue.when hides errors on Riverpod 3: a provider that fails '
          'its first load stays AsyncLoading while it retries, so the error '
          'branch is unreachable. Use whenSafe from '
          'lib/core/async/async_value_x.dart instead.',
    );
  });
}
