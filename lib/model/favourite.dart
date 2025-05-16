library;


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/foodItem.dart';

part 'favourite.g.dart';

abstract class Favourite implements Built<Favourite, FavouriteBuilder> {
  Favourite._();

  factory Favourite([Function(FavouriteBuilder b) updates]) = _$Favourite;

  @BuiltValueField(wireName: 'id')
  int get favId;
  @BuiltValueField(wireName: 'foodItem')
  FoodItem get foodItem;

  static Serializer<Favourite> get serializer => _$favouriteSerializer;
}
