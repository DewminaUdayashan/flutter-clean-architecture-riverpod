import 'package:flutter_clean_architecture/features/cart/data/repository/cart_repository.dart';
import 'package:flutter_clean_architecture/features/product_details/domain/entities/product_detail_state.dart';
import 'package:flutter_clean_architecture/features/product_details/domain/usecases/get_product_with_cart_status_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail.g.dart';

@riverpod
class ProductDetail extends _$ProductDetail {
  @override
  FutureOr<ProductDetailState> build(int productId) async {
    final useCase = ref.watch(getProductWithCartStatusUseCaseProvider);
    return useCase(productId);
  }

  void addToCart() {
    final cartRepository = ref.read(cartRepositoryProvider);
    cartRepository.addToCart(productId);
    // Invalidate self to re-fetch status
    ref.invalidateSelf();
  }
}
