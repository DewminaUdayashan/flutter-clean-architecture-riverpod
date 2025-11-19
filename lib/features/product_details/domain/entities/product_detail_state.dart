import 'package:flutter_clean_architecture/features/products/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_state.freezed.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState({
    required ProductModel product,
    required bool isAddedToCart,
  }) = _ProductDetailState;
}
