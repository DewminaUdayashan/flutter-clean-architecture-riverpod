import 'package:flutter_clean_architecture/features/cart/domain/entities/cart_state.dart';
import 'package:flutter_clean_architecture/features/cart/domain/usecases/get_cart_items_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/provider.dart';

part 'cart.g.dart';

@riverpod
class Cart extends _$Cart {
  @override
  FutureOr<CartState> build() async {
    final useCase = ref.watch(getCartItemsUseCaseProvider);
    return useCase();
  }

  void removeFromCart(int productId) {
    final cartRepository = ref.read(cartRepositoryProvider);
    cartRepository.removeFromCart(productId);
    ref.invalidateSelf();
  }
}
