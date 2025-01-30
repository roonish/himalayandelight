import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/foodItem.dart';
import '../model/favourite.dart';
import '../model/serializers.dart';
import '../utils/exceptions.dart';
import 'http_api.dart';

abstract class FavRepository {
  Future<Favourite> addFavFood(FoodItem data);
  Future<BuiltList<Favourite>?> getFavFood({int page = 1});
  Future<void> deleteFav(int postId);
}

class ApiFavRepository implements FavRepository {
  ApiFavRepository(this._api);
  final HttpApi _api;

  @override
  Future<Favourite> addFavFood(FoodItem data) async {
    dynamic rawData = await _api.post(
      '/himalayandelight/favourites',
      serializers.serializeWith(
        Favourite.serializer,
        data,
      ),
    );

    return serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        Favourite,
      ),
    ) as Favourite;
  }

  @override
  Future<BuiltList<Favourite>?> getFavFood({int page = 1}) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/himalayandelight/favourites',
      );

      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          [FullType(Favourite)],
        ),
      ) as BuiltList<Favourite>;
    } on ClientException {
      //reached end of page
      return null;
    }
  }

  @override
  Future<void> deleteFav(int postId) async {
    await _api.delete(
      '/himalayandelight/favourites$postId',
    );
  }
}
