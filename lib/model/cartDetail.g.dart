// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartDetail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartDetail> _$cartDetailSerializer = new _$CartDetailSerializer();

class _$CartDetailSerializer implements StructuredSerializer<CartDetail> {
  @override
  final Iterable<Type> types = const [CartDetail, _$CartDetail];
  @override
  final String wireName = 'CartDetail';

  @override
  Iterable<Object?> serialize(Serializers serializers, CartDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cart_items',
      serializers.serialize(object.cartItems,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CartItem)])),
      'total_subtotal',
      serializers.serialize(object.totalSubtotal,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  CartDetail deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cart_items':
          result.cartItems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CartItem)]))!
              as BuiltList<Object?>);
          break;
        case 'total_subtotal':
          result.totalSubtotal = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CartDetail extends CartDetail {
  @override
  final BuiltList<CartItem> cartItems;
  @override
  final double totalSubtotal;

  factory _$CartDetail([void Function(CartDetailBuilder)? updates]) =>
      (new CartDetailBuilder()..update(updates))._build();

  _$CartDetail._({required this.cartItems, required this.totalSubtotal})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cartItems, r'CartDetail', 'cartItems');
    BuiltValueNullFieldError.checkNotNull(
        totalSubtotal, r'CartDetail', 'totalSubtotal');
  }

  @override
  CartDetail rebuild(void Function(CartDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartDetailBuilder toBuilder() => new CartDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartDetail &&
        cartItems == other.cartItems &&
        totalSubtotal == other.totalSubtotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cartItems.hashCode);
    _$hash = $jc(_$hash, totalSubtotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartDetail')
          ..add('cartItems', cartItems)
          ..add('totalSubtotal', totalSubtotal))
        .toString();
  }
}

class CartDetailBuilder implements Builder<CartDetail, CartDetailBuilder> {
  _$CartDetail? _$v;

  ListBuilder<CartItem>? _cartItems;
  ListBuilder<CartItem> get cartItems =>
      _$this._cartItems ??= new ListBuilder<CartItem>();
  set cartItems(ListBuilder<CartItem>? cartItems) =>
      _$this._cartItems = cartItems;

  double? _totalSubtotal;
  double? get totalSubtotal => _$this._totalSubtotal;
  set totalSubtotal(double? totalSubtotal) =>
      _$this._totalSubtotal = totalSubtotal;

  CartDetailBuilder();

  CartDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartItems = $v.cartItems.toBuilder();
      _totalSubtotal = $v.totalSubtotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartDetail;
  }

  @override
  void update(void Function(CartDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartDetail build() => _build();

  _$CartDetail _build() {
    _$CartDetail _$result;
    try {
      _$result = _$v ??
          new _$CartDetail._(
            cartItems: cartItems.build(),
            totalSubtotal: BuiltValueNullFieldError.checkNotNull(
                totalSubtotal, r'CartDetail', 'totalSubtotal'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cartItems';
        cartItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CartDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
