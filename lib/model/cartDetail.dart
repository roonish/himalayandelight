library cartDetail;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/cartItem.dart';

part 'cartDetail.g.dart';

abstract class CartDetail implements Built<CartDetail, CartDetailBuilder> {
  CartDetail._();

  factory CartDetail([updates(CartDetailBuilder b)]) = _$CartDetail;

  @BuiltValueField(wireName: 'cart_items')
  BuiltList<CartItem> get cartItems;
  @BuiltValueField(wireName: 'total_subtotal')
  double get totalSubtotal;

  static Serializer<CartDetail> get serializer => _$cartDetailSerializer;
}
