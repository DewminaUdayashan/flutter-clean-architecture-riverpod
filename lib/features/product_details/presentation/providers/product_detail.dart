import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../cart/data/repository/provider.dart';
import '../../domain/entities/product_detail_state.dart';
import '../../domain/usecases/get_product_with_cart_status_usecase.dart';

part 'product_detail.g.dart';

@riverpod
class ProductDetail extends _$ProductDetail {
  @override
  FutureOr<ProductDetailState> build(int productId) {
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
