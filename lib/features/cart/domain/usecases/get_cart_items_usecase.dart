import 'package:flutter_clean_architecture/features/cart/data/repository/cart_repository.dart';
import 'package:flutter_clean_architecture/features/cart/domain/entities/cart_state.dart';
import 'package:flutter_clean_architecture/features/products/data/repository/product_repository.dart';
import 'package:flutter_clean_architecture/features/products/data/repository/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/provider.dart';

part 'get_cart_items_usecase.g.dart';

class GetCartItemsUseCase {
  GetCartItemsUseCase(this.productRepository, this.cartRepository);

  final ProductRepository productRepository;
  final CartRepository cartRepository;

  Future<CartState> call() async {
    final cartItemIds = cartRepository.getCartItemIds();

    if (cartItemIds.isEmpty) {
      return const CartState(items: []);
    }

    final cartItems = await Future.wait(
      cartItemIds.map((id) async {
        final product = await productRepository.fetchProduct(id);
        return CartItem(product: product, quantity: 1);
      }),
    );

    return CartState(items: cartItems);
  }
}

@riverpod
GetCartItemsUseCase getCartItemsUseCase(Ref ref) {
  final cartRepository = ref.watch(cartRepositoryProvider);
  final productRepository = ref.watch(productRepositoryProvider);

  return GetCartItemsUseCase(productRepository, cartRepository);
}
