library;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/foodItem.dart';

part 'recommendation.g.dart';

abstract class Recommendation
    implements Built<Recommendation, RecommendationBuilder> {
  Recommendation._();

  factory Recommendation([Function(RecommendationBuilder b) updates]) = _$Recommendation;

  @BuiltValueField(wireName: 'id')
  int get recommendationId;
  @BuiltValueField(wireName: 'foodItem')
  FoodItem get foodItem;

  static Serializer<Recommendation> get serializer => _$recommendationSerializer;
}
