library;


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/foodItem.dart';

part 'cartItem.g.dart';

abstract class CartItem implements Built<CartItem, CartItemBuilder> {
  CartItem._();

  factory CartItem([Function(CartItemBuilder b) updates]) = _$CartItem;

  @BuiltValueField(wireName: 'id')
  int? get cartItemId;
  @BuiltValueField(wireName: 'foodItem')
  FoodItem get foodItem;
  @BuiltValueField(wireName: 'quantity')
  int get quantity;
  @BuiltValueField(wireName: 'subTotal')
  double? get subTotal;

  static Serializer<CartItem> get serializer => _$cartItemSerializer;
}
