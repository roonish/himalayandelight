import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/bloc/cartItem/cart_item_bloc.dart';
import 'package:himalayan_delights/bloc/recommendation/recommendation_bloc.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.cartItem,
    this.buttonColor = AppColor.searchColor,
    this.buttonWidth = 110,
    this.buttonLabelSize = 18,
  });

  final CartItem cartItem;
  final Color buttonColor;
  final double buttonWidth;
  final double buttonLabelSize;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> itemCount = ValueNotifier<int>(cartItem.quantity);
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(
      vertical: 4.0,
      horizontal: 10.0,
    );
    final updateCartEvent = BlocProvider.of<CartItemBloc>(context);

    return Container(
      width: getDeviceExactWidth(buttonWidth, mediaQ),
      padding: gapPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: buttonColor),
      child: ValueListenableBuilder<int>(
          valueListenable: itemCount,
          builder: (context, int noOfOrder, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      if (noOfOrder > 1) {
                        itemCount.value--;
//updated cartitem with new quantity
                        final updatedCartItem = cartItem
                            .rebuild((b) => b..quantity = itemCount.value);

                        updateCartEvent.add(UpdateCart(
                            id: cartItem.cartItemId,
                            updatedCartItem: updatedCartItem));
                      }
                    },
                    child: Icon(
                      Icons.remove,
                      color: AppColor.primaryColor,
                      size: 15,
                    )),
                LabelText(
                  text: noOfOrder.toString(),
                  color: AppColor.primaryColor,
                  size: buttonLabelSize,
                  fontWeight: FontWeight.bold,
                ),
                InkWell(
                  onTap: () {
                    itemCount.value++;

                    final updatedCartItem =
                        cartItem.rebuild((b) => b..quantity = itemCount.value);

                    updateCartEvent.add(UpdateCart(
                        id: cartItem.cartItemId,
                        updatedCartItem: updatedCartItem));
                  },
                  child: Icon(
                    Icons.add,
                    color: AppColor.primaryColor,
                    size: 15,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
