import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/router/router.dart';
import 'package:flutter_clean_architecture/core/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Flutter Clean Architecture',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
