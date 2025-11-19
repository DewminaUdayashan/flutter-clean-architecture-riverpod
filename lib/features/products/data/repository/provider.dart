import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/networking/dio_provider.dart';
import 'product_repository.dart';
import 'product_repository_impl.dart';

part 'provider.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return ProductRepositoryImpl(dio);
}
