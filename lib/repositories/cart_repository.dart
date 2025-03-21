import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/model/foodItem.dart';
import '../model/serializers.dart';
import '../utils/exceptions.dart';
import 'http_api.dart';

abstract class CartRepository {
  Future<CartItem> addCartItem(FoodItem data);
  Future<BuiltList<CartItem>?> getCartItems({int page = 1});
  Future<void> deleteCartItem(int cartId);
    Future<void> updateCartItem(int cartId);
}

class ApiCartRepository implements CartRepository {
  ApiCartRepository(this._api);
  final HttpApi _api;

  @override
  Future<CartItem> addCartItem(FoodItem data) async {
    final rawData = await _api.post(
      '/himalayandelight/cartitems/',
      {"food_item": data.id},
    );

    return serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        CartItem,
      ),
    ) as CartItem;
  }

  @override
  Future<BuiltList<CartItem>?> getCartItems({int page = 1}) async {
    try {
      final List<dynamic> rawData = await _api.get(
        '/himalayandelight/cartitems',
      );

      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          BuiltList,
          [FullType(CartItem)],
        ),
      ) as BuiltList<CartItem>;
    } on ClientException {
      //reached end of page
      return null;
    }
  }

  @override
  Future<void> updateCartItem(int cartId) async {
    await _api.put(
      '/himalayandelight/cartitems/$cartId/',
    );
  }

  @override
  Future<void> deleteCartItem(int cartId) async {
    await _api.delete(
      '/himalayandelight/cartitems/$cartId/',
    );
  }
}
