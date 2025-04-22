import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryTitle extends StatelessWidget {
  const DeliveryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry rowPadding = EdgeInsets.symmetric(horizontal: 15);

    return Padding(
      padding: rowPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LabelText(text: 'Delivery boy'),
          Icon(
            Icons.keyboard_arrow_down,
            size: 35,
            color: AppColor.primaryColor,
          )
        ],
      ),
    );
  }
}
