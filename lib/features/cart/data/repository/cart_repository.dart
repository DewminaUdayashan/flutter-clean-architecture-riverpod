import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_repository.g.dart';

class CartRepository {
  final List<int> _cartItemIds = [];

  bool isAdded(int productId) {
    return _cartItemIds.contains(productId);
  }

  void addToCart(int productId) {
    if (!_cartItemIds.contains(productId)) {
      _cartItemIds.add(productId);
    }
  }

  void removeFromCart(int productId) {
    _cartItemIds.remove(productId);
  }
}

@Riverpod(keepAlive: true)
CartRepository cartRepository(Ref ref) {
  return CartRepository();
}
