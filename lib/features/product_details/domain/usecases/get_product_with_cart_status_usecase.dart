import 'package:flutter_clean_architecture/features/cart/data/repository/cart_repository.dart';
import 'package:flutter_clean_architecture/features/product_details/domain/entities/product_detail_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../cart/data/repository/provider.dart';
import '../../../products/data/repository/product_repository.dart';
import '../../../products/data/repository/provider.dart';

part 'get_product_with_cart_status_usecase.g.dart';

class GetProductWithCartStatusUseCase {
  final ProductRepository _productRepository;
  final CartRepository _cartRepository;

  GetProductWithCartStatusUseCase(
    this._productRepository,
    this._cartRepository,
  );

  Future<ProductDetailState> call(int productId) async {
    final product = await _productRepository.fetchProduct(productId);
    final isAdded = _cartRepository.isAdded(productId);
    return ProductDetailState(product: product, isAddedToCart: isAdded);
  }
}

@riverpod
GetProductWithCartStatusUseCase getProductWithCartStatusUseCase(Ref ref) {
  final productRepository = ref.watch(productRepositoryProvider);
  final cartRepository = ref.watch(cartRepositoryProvider);
  return GetProductWithCartStatusUseCase(productRepository, cartRepository);
}
