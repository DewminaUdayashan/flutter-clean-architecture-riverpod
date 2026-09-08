// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_items_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getCartItemsUseCase)
final getCartItemsUseCaseProvider = GetCartItemsUseCaseProvider._();

final class GetCartItemsUseCaseProvider
    extends
        $FunctionalProvider<
          GetCartItemsUseCase,
          GetCartItemsUseCase,
          GetCartItemsUseCase
        >
    with $Provider<GetCartItemsUseCase> {
  GetCartItemsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCartItemsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCartItemsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetCartItemsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetCartItemsUseCase create(Ref ref) {
    return getCartItemsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetCartItemsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetCartItemsUseCase>(value),
    );
  }
}

String _$getCartItemsUseCaseHash() =>
    r'230dae0bce1d50a88461c86b781f683d425d2b1b';
