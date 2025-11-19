import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/cart/presentation/screens/cart_screen.dart';
import '../../features/product_details/presentation/screens/product_detail_screen.dart';
import '../../features/products/presentation/screens/products_list_screen.dart';
import 'routes.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: Routes.cart,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const ProductsListScreen(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) {
              final id = int.parse(state.pathParameters['id']!);
              return ProductDetailScreen(productId: id);
            },
          ),
        ],
      ),
    ],
  );
}
