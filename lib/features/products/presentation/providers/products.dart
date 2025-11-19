import 'package:flutter_clean_architecture/features/products/data/models/product_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository/provider.dart';

part 'products.g.dart';

@riverpod
class Products extends _$Products {
  @override
  FutureOr<List<ProductModel>> build() async {
    final repository = ref.watch(productRepositoryProvider);
    return repository.fetchProducts();
  }
}
