library cartItem;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/foodItem.dart';

part 'cartItem.g.dart';

abstract class CartItem implements Built<CartItem, CartItemBuilder> {
  CartItem._();

  factory CartItem([updates(CartItemBuilder b)]) = _$CartItem;

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
