import '../models/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> fetchProducts();
  Future<ProductModel> fetchProduct(int id);
}
