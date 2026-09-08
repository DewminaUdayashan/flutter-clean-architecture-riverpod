// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductDetailState {

 ProductModel get product; bool get isAddedToCart;
/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailStateCopyWith<ProductDetailState> get copyWith => _$ProductDetailStateCopyWithImpl<ProductDetailState>(this as ProductDetailState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductDetailState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailState&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.isAddedToCart, _this.isAddedToCart) || other.isAddedToCart == _this.isAddedToCart));
}


@override
int get hashCode {
  final _this = this as ProductDetailState;
  return Object.hash(runtimeType,_this.product,_this.isAddedToCart);
}

@override
String toString() {
  final _this = this as ProductDetailState;
  return 'ProductDetailState(product: ${_this.product}, isAddedToCart: ${_this.isAddedToCart})';
}


}

/// @nodoc
abstract mixin class $ProductDetailStateCopyWith<$Res>  {
  factory $ProductDetailStateCopyWith(ProductDetailState value, $Res Function(ProductDetailState) _then) = _$ProductDetailStateCopyWithImpl;
@useResult
$Res call({
 ProductModel product, bool isAddedToCart
});


$ProductModelCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._self, this._then);

  final ProductDetailState _self;
  final $Res Function(ProductDetailState) _then;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? isAddedToCart = null,}) {
  return _then(ProductDetailState(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,isAddedToCart: null == isAddedToCart ? _self.isAddedToCart : isAddedToCart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res> get product {
  
  return $ProductModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailState].
extension ProductDetailStatePatterns on ProductDetailState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductModel product,  bool isAddedToCart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailState() when $default != null:
return $default(_that.product,_that.isAddedToCart);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductModel product,  bool isAddedToCart)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailState():
return $default(_that.product,_that.isAddedToCart);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductModel product,  bool isAddedToCart)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailState() when $default != null:
return $default(_that.product,_that.isAddedToCart);case _:
  return null;

}
}

}

/// @nodoc


class _ProductDetailState implements ProductDetailState {
  const _ProductDetailState({required this.product, required this.isAddedToCart});
  

@override final  ProductModel product;
@override final  bool isAddedToCart;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailStateCopyWith<_ProductDetailState> get copyWith => __$ProductDetailStateCopyWithImpl<_ProductDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailState&&(identical(other.product, product) || other.product == product)&&(identical(other.isAddedToCart, isAddedToCart) || other.isAddedToCart == isAddedToCart));
}


@override
int get hashCode {
    return Object.hash(runtimeType,product,isAddedToCart);
}

@override
String toString() {
    return 'ProductDetailState(product: $product, isAddedToCart: $isAddedToCart)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailStateCopyWith<$Res> implements $ProductDetailStateCopyWith<$Res> {
  factory _$ProductDetailStateCopyWith(_ProductDetailState value, $Res Function(_ProductDetailState) _then) = __$ProductDetailStateCopyWithImpl;
@override @useResult
$Res call({
 ProductModel product, bool isAddedToCart
});


@override $ProductModelCopyWith<$Res> get product;

}
/// @nodoc
class __$ProductDetailStateCopyWithImpl<$Res>
    implements _$ProductDetailStateCopyWith<$Res> {
  __$ProductDetailStateCopyWithImpl(this._self, this._then);

  final _ProductDetailState _self;
  final $Res Function(_ProductDetailState) _then;

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? isAddedToCart = null,}) {
  return _then(_ProductDetailState(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel,isAddedToCart: null == isAddedToCart ? _self.isAddedToCart : isAddedToCart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res> get product {
  
  return $ProductModelCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
