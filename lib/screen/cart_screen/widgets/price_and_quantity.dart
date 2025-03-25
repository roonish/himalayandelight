import 'package:himalayan_delights/model/cartDetail.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class PriceAndQuantity extends StatelessWidget {
  final CartItem cartItem;
  const PriceAndQuantity({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry pricePadding =
        EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: pricePadding,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: AppColor.buttonColor),
          child: LabelText(
            text: '${cartItem.subTotal} \$',
            size: 15,
          ),
        ),
        QuantityButton(
          buttonLabelSize: 15,
          buttonWidth: 100,
          cartItem: cartItem,
          buttonColor: AppColor.buttonColor,
        ),
      ],
    );
  }
}
