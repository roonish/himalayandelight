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
      'foodItem',
      serializers.serialize(object.foodItem,
          specifiedType: const FullType(FoodItem)),
      'quantity',
      serializers.serialize(object.quantity,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.cartItemId;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subTotal;
    if (value != null) {
      result
        ..add('subTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
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
              specifiedType: const FullType(int)) as int?;
          break;
        case 'foodItem':
          result.foodItem.replace(serializers.deserialize(value,
              specifiedType: const FullType(FoodItem))! as FoodItem);
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'subTotal':
          result.subTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$CartItem extends CartItem {
  @override
  final int? cartItemId;
  @override
  final FoodItem foodItem;
  @override
  final int quantity;
  @override
  final double? subTotal;

  factory _$CartItem([void Function(CartItemBuilder)? updates]) =>
      (new CartItemBuilder()..update(updates))._build();

  _$CartItem._(
      {this.cartItemId,
      required this.foodItem,
      required this.quantity,
      this.subTotal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(foodItem, r'CartItem', 'foodItem');
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
        foodItem == other.foodItem &&
        quantity == other.quantity &&
        subTotal == other.subTotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cartItemId.hashCode);
    _$hash = $jc(_$hash, foodItem.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, subTotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartItem')
          ..add('cartItemId', cartItemId)
          ..add('foodItem', foodItem)
          ..add('quantity', quantity)
          ..add('subTotal', subTotal))
        .toString();
  }
}

class CartItemBuilder implements Builder<CartItem, CartItemBuilder> {
  _$CartItem? _$v;

  int? _cartItemId;
  int? get cartItemId => _$this._cartItemId;
  set cartItemId(int? cartItemId) => _$this._cartItemId = cartItemId;

  FoodItemBuilder? _foodItem;
  FoodItemBuilder get foodItem => _$this._foodItem ??= new FoodItemBuilder();
  set foodItem(FoodItemBuilder? foodItem) => _$this._foodItem = foodItem;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _subTotal;
  double? get subTotal => _$this._subTotal;
  set subTotal(double? subTotal) => _$this._subTotal = subTotal;

  CartItemBuilder();

  CartItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartItemId = $v.cartItemId;
      _foodItem = $v.foodItem.toBuilder();
      _quantity = $v.quantity;
      _subTotal = $v.subTotal;
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
    _$CartItem _$result;
    try {
      _$result = _$v ??
          new _$CartItem._(
            cartItemId: cartItemId,
            foodItem: foodItem.build(),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'CartItem', 'quantity'),
            subTotal: subTotal,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'foodItem';
        foodItem.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CartItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
