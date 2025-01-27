import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:himalayan_delights/model/favourite.dart';
import 'package:himalayan_delights/model/foodItem.dart';

part 'serializers.g.dart';

@SerializersFor(const [Favourite, FoodItem])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(Favourite)]),
          () => new ListBuilder<Favourite>())
      ..addBuilderFactory(const FullType(BuiltList, [FullType(FoodItem)]),
          () => new ListBuilder<FoodItem>()))
    .build();
