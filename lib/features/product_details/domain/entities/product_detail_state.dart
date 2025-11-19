import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../products/data/models/product_model.dart';

part 'product_detail_state.freezed.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState({
    required ProductModel product,
    required bool isAddedToCart,
  }) = _ProductDetailState;
}
