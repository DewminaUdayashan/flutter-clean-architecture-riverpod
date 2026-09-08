// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductDetail)
final productDetailProvider = ProductDetailFamily._();

final class ProductDetailProvider
    extends $AsyncNotifierProvider<ProductDetail, ProductDetailState> {
  ProductDetailProvider._({
    required ProductDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailHash();

  @override
  String toString() {
    return r'productDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductDetail create() => ProductDetail();

  @override
  bool operator ==(Object other) {
    return other is ProductDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailHash() => r'672bc482fc0293b58fa195a4bd297edf6b760ec5';

final class ProductDetailFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductDetail,
          AsyncValue<ProductDetailState>,
          ProductDetailState,
          FutureOr<ProductDetailState>,
          int
        > {
  ProductDetailFamily._()
    : super(
        retry: null,
        name: r'productDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailProvider call(int productId) =>
      ProductDetailProvider._(argument: productId, from: this);

  @override
  String toString() => r'productDetailProvider';
}

abstract class _$ProductDetail extends $AsyncNotifier<ProductDetailState> {
  late final _$args = ref.$arg as int;
  int get productId => _$args;

  FutureOr<ProductDetailState> build(int productId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ProductDetailState>, ProductDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductDetailState>, ProductDetailState>,
              AsyncValue<ProductDetailState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
