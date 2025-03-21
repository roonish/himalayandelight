// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartItem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartItem> _$cartItemSerializer = new _$CartItemSerializer();

class _$CartItemSerializer implements StructuredSerializer<CartItem> {
  @override
  final Iterable<Type> types = const [CartItem, _$CartItem];
  @override
  final String wireName = 'CartItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, CartItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.cartItemId,
          specifiedType: const FullType(int)),
      'foodItem',
      serializers.serialize(object.foodItemId,
          specifiedType: const FullType(int)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CartItem deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.cartItemId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'foodItem':
          result.foodItemId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CartItem extends CartItem {
  @override
  final int cartItemId;
  @override
  final int foodItemId;
  @override
  final int quantity;

  factory _$CartItem([void Function(CartItemBuilder)? updates]) =>
      (new CartItemBuilder()..update(updates))._build();

  _$CartItem._(
      {required this.cartItemId,
      required this.foodItemId,
      required this.quantity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cartItemId, r'CartItem', 'cartItemId');
    BuiltValueNullFieldError.checkNotNull(
        foodItemId, r'CartItem', 'foodItemId');
    BuiltValueNullFieldError.checkNotNull(quantity, r'CartItem', 'quantity');
  }

  @override
  CartItem rebuild(void Function(CartItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartItemBuilder toBuilder() => new CartItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartItem &&
        cartItemId == other.cartItemId &&
        foodItemId == other.foodItemId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cartItemId.hashCode);
    _$hash = $jc(_$hash, foodItemId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartItem')
          ..add('cartItemId', cartItemId)
          ..add('foodItemId', foodItemId)
          ..add('quantity', quantity))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem? _$v;

  int? _cartItemId;
  int? get cartItemId => _$this._cartItemId;
  set cartItemId(int? cartItemId) => _$this._cartItemId = cartItemId;

  int? _foodItemId;
  int? get foodItemId => _$this._foodItemId;
  set foodItemId(int? foodItemId) => _$this._foodItemId = foodItemId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  CartItemBuilder();

  CartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartItemId = $v.cartItemId;
      _foodItemId = $v.foodItemId;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartItem;
  }

  @override
  void update(void Function(CartItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartItem build() => _build();

  _$CartItem _build() {
    final _$result = _$v ??
        new _$CartItem._(
          cartItemId: BuiltValueNullFieldError.checkNotNull(
              cartItemId, r'CartItem', 'cartItemId'),
          foodItemId: BuiltValueNullFieldError.checkNotNull(
              foodItemId, r'CartItem', 'foodItemId'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'CartItem', 'quantity'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
