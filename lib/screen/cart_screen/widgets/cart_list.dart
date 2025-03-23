import 'package:built_collection/built_collection.dart' show BuiltList;
import 'package:himalayan_delights/screen/cart_screen/imports.dart';

import '../../../model/cartItem.dart';

class CartList extends StatelessWidget {
  const CartList({
    super.key,
    required this.cartItems,
  });

  final BuiltList<CartItem> cartItems;

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.only(bottom: 20, top: 10, right: 10, left: 5);
    const EdgeInsetsGeometry containerMargin =
        EdgeInsets.symmetric(vertical: 10);

    return SizedBox(
      height: getDeviceExactHeight(275, mediaQ),
      width: double.infinity,
      child: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return Container(
            padding: containerPadding,
            margin: containerMargin,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColor.searchColor),
            child: Row(
              children: [
                CircularImage(
                    radius: 40, image: cartItems[index].foodItem.image),
                SizedBox(
                  width: getDeviceExactWidth(10, mediaQ),
                ),
                Expanded(
                  child: IntrinsicWidth(
                    child: Column(
                      children: [
                        FoodTitleAndRemove(
                          foodName: cartItems[index].foodItem.name,
                        ),
                        Padding(
                          padding: containerMargin,
                          child: CaloriesAndWeight(
                            foodItem: cartItems[index].foodItem,
                          ),
                        ),
                        PriceAndQuantity(cartItem:cartItems[index]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
