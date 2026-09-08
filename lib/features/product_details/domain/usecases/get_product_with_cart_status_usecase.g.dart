// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_with_cart_status_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getProductWithCartStatusUseCase)
final getProductWithCartStatusUseCaseProvider =
    GetProductWithCartStatusUseCaseProvider._();

final class GetProductWithCartStatusUseCaseProvider
    extends
        $FunctionalProvider<
          GetProductWithCartStatusUseCase,
          GetProductWithCartStatusUseCase,
          GetProductWithCartStatusUseCase
        >
    with $Provider<GetProductWithCartStatusUseCase> {
  GetProductWithCartStatusUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProductWithCartStatusUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProductWithCartStatusUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetProductWithCartStatusUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetProductWithCartStatusUseCase create(Ref ref) {
    return getProductWithCartStatusUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetProductWithCartStatusUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetProductWithCartStatusUseCase>(
        value,
      ),
    );
  }
}

String _$getProductWithCartStatusUseCaseHash() =>
    r'1c744a6e5dbc9c8b554a3878021f0b8c6e965d87';
