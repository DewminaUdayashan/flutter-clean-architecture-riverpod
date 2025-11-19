import 'package:flutter_clean_architecture/features/product_details/presentation/screens/product_detail_screen.dart';
import 'package:flutter_clean_architecture/features/products/presentation/screens/products_list_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ProductsListScreen(),
      ),
      GoRoute(
        path: '/details/:id',
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return ProductDetailScreen(productId: id);
        },
      ),
    ],
  );
}
