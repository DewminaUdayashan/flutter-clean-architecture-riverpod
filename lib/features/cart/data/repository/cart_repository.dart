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

  List<int> getCartItemIds() {
    return List.unmodifiable(_cartItemIds);
  }
}
