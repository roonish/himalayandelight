import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class PriceAndQuantity extends StatelessWidget {
  const PriceAndQuantity({
    super.key,
    required this.itemCount,
  });

  final ValueNotifier<int> itemCount;

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
          child: const LabelText(
            text: '30 \$',
            size: 15,
          ),
        ),
        QuantityButton(
          buttonLabelSize: 15,
          buttonWidth: 100,
          itemCount: itemCount,
          buttonColor: AppColor.buttonColor,
        ),
      ],
    );
  }
}
