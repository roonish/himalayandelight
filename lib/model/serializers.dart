import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:himalayan_delights/model/cartDetail.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/model/favourite.dart';
import 'package:himalayan_delights/model/foodItem.dart';

import 'recommendation.dart';

part 'serializers.g.dart';

@SerializersFor([Favourite, FoodItem, Recommendation, CartDetail, CartItem])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Favourite)]),
          () => ListBuilder<Favourite>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(FoodItem)]),
          () => ListBuilder<FoodItem>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Recommendation)]),
          () => ListBuilder<Recommendation>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(CartItem)]),
          () => ListBuilder<CartItem>()))
    .build();
