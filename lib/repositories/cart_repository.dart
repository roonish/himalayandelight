import 'package:built_value/serializer.dart';
import 'package:himalayan_delights/model/cartDetail.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/model/foodItem.dart';
import '../model/serializers.dart';
import '../utils/exceptions.dart';
import 'http_api.dart';

abstract class CartRepository {
  Future<CartItem> addCartItem(FoodItem foodItem);
  Future<CartDetail?> getCartItems({int page = 1});
  Future<void> deleteCartItem(int cartId);
  Future<void> updateCartItem(int cartId, CartItem updatedcartItem);
}

class ApiCartRepository implements CartRepository {
  ApiCartRepository(this._api);
  final HttpApi _api;

  @override
  Future<CartItem> addCartItem(FoodItem foodItem) async {
    final rawData = await _api.post('/himalayandelight/cartDetails/',
        serializers.serializeWith(FoodItem.serializer, foodItem));

    return serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        CartItem,
      ),
    ) as CartItem;
  }

  @override
  Future<CartDetail?> getCartItems({int page = 1}) async {
    try {
      final dynamic rawData = await _api.get(
        '/himalayandelight/cartDetails',
      );

      return serializers.deserialize(
        rawData,
        specifiedType: const FullType(
          CartDetail,
        ),
      ) as CartDetail;
    } on ClientException {
      //reached end of page
      return null;
    }
  }

  @override
  Future<CartItem> updateCartItem(int cartId, CartItem updatedcartItem) async {
    final rawData = await _api.put('/himalayandelight/cartDetails/$cartId/',
        serializers.serializeWith(CartItem.serializer, updatedcartItem));

    return serializers.deserialize(
      rawData,
      specifiedType: const FullType(
        CartItem,
      ),
    ) as CartItem;
  }

  @override
  Future<void> deleteCartItem(int cartId) async {
    await _api.delete(
      '/himalayandelight/cartDetails/$cartId/',
    );
  }
}
