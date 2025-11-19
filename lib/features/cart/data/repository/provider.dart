import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'cart_repository.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
CartRepository cartRepository(Ref ref) {
  return CartRepository();
}
