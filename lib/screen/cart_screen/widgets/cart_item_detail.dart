import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class CartItemDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  const CartItemDetail({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          width: getDeviceExactWidth(5, mediaQ),
        ),
        LabelText(
          text: label,
          size: 15,
        ),
      ],
    );
  }
}
