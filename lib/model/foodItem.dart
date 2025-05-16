library;


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodItem.g.dart';

abstract class FoodItem implements Built<FoodItem, FoodItemBuilder> {
  FoodItem._();

  factory FoodItem([Function(FoodItemBuilder b) updates]) = _$FoodItem;

  @BuiltValueField(wireName: 'id')
  int get id;
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
  @BuiltValueField(wireName: 'img')
  String get image;

  static Serializer<FoodItem> get serializer => _$foodItemSerializer;
}
