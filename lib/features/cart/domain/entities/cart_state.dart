import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../products/data/models/product_model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required ProductModel product,
    required int quantity,
  }) = _CartItem;
}

@freezed
class CartState with _$CartState {
  const factory CartState({required List<CartItem> items}) = _CartState;
}
