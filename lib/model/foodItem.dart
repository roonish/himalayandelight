library foodItem;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodItem.g.dart';

abstract class FoodItem implements Built<FoodItem, FoodItemBuilder> {
  FoodItem._();

  factory FoodItem([updates(FoodItemBuilder b)]) = _$FoodItem;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'desc')
  String get desc;
  @BuiltValueField(wireName: 'calory')
  int get calory;
  @BuiltValueField(wireName: 'unit_price')
  String get unitPrice;
  @BuiltValueField(wireName: 'rating')
  int get rating;
  @BuiltValueField(wireName: 'collection')
  int get collection;

  static Serializer<FoodItem> get serializer => _$foodItemSerializer;
}
