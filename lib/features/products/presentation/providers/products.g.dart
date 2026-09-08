// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Products)
final productsProvider = ProductsProvider._();

final class ProductsProvider
    extends $AsyncNotifierProvider<Products, List<ProductModel>> {
  ProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsHash();

  @$internal
  @override
  Products create() => Products();
}

String _$productsHash() => r'6559ee05aa834c49eb28285a17e812fcb2aa6980';

abstract class _$Products extends $AsyncNotifier<List<ProductModel>> {
  FutureOr<List<ProductModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<ProductModel>>, List<ProductModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ProductModel>>, List<ProductModel>>,
              AsyncValue<List<ProductModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
