import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/product_model.dart';
import '../../data/repository/provider.dart';

part 'products.g.dart';

@riverpod
class Products extends _$Products {
  @override
  FutureOr<List<ProductModel>> build() {
    final repository = ref.watch(productRepositoryProvider);
    return repository.fetchProducts();
  }
}
