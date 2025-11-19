import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/theme/extension.dart';
import 'package:flutter_clean_architecture/features/product_details/presentation/providers/product_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailScreen extends ConsumerWidget {
  final int productId;

  const ProductDetailScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailProvider(productId));

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.productDetail),
        leading: BackButton(),
      ),
      body: state.when(
        data: (detailState) {
          final product = detailState.product;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    product.thumbnail,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                Text(product.title, style: context.textTheme.headlineMedium),
                const SizedBox(height: 8),
                Text(
                  '\$${product.price}',
                  style: context.textTheme.titleLarge?.copyWith(
                    color: context.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 16),
                Text(product.description),
                const SizedBox(height: 24),
                if (detailState.isAddedToCart)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          detailState.isAddedToCart
                              ? context.l10n.addedToCart
                              : '',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            Center(child: Text(context.l10n.error(error.toString()))),
      ),
      floatingActionButton: state.hasValue && !state.value!.isAddedToCart
          ? FloatingActionButton.extended(
              onPressed: () {
                ref.read(productDetailProvider(productId).notifier).addToCart();
              },
              label: Text(context.l10n.addToCart),
              icon: const Icon(Icons.add_shopping_cart),
            )
          : null,
    );
  }
}
