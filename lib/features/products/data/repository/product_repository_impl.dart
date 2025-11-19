import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/features/products/data/models/product_model.dart';

import 'product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final Dio _dio;

  ProductRepositoryImpl(this._dio);

  @override
  Future<List<ProductModel>> fetchProducts() async {
    final response = await _dio.get('/products');
    final data = response.data as Map<String, dynamic>;
    final productsList = data['products'] as List;
    return productsList.map((e) => ProductModel.fromJson(e)).toList();
  }

  @override
  Future<ProductModel> fetchProduct(int id) async {
    final response = await _dio.get('/products/$id');
    return ProductModel.fromJson(response.data);
  }
}
