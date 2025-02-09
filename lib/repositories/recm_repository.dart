import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/foodItem.dart';
import '../model/recommendation.dart';
import '../model/serializers.dart';
import '../utils/exceptions.dart';
import 'http_api.dart';

abstract class RecmRepository {
  Future<BuiltList<Recommendation>?> getFavFood({int page = 1});
}

class ApiRecmRepository implements RecmRepository {
  ApiRecmRepository(this._api);
  final HttpApi _api;

  @override
  Future<BuiltList<Recommendation>?> getFavFood({int page = 1}) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/himalayandelight/recommendation',
      );

      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          [FullType(Recommendation)],
        ),
      ) as BuiltList<Recommendation>;
    } on ClientException {
      //reached end of page
      return null;
    }
  }
}
