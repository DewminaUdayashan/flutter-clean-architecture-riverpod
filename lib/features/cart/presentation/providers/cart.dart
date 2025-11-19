import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/provider.dart';
import '../../domain/entities/cart_state.dart';
import '../../domain/usecases/get_cart_items_usecase.dart';

part 'cart.g.dart';

@riverpod
class Cart extends _$Cart {
  @override
  FutureOr<CartState> build() {
    final useCase = ref.watch(getCartItemsUseCaseProvider);
    return useCase();
  }

  void removeFromCart(int productId) {
    final cartRepository = ref.read(cartRepositoryProvider);
    cartRepository.removeFromCart(productId);
    ref.invalidateSelf();
  }
}
