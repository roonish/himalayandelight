import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryDetail extends StatelessWidget {
  final IconData? icon;
  final String text;
  final double fontSize;
  const DeliveryDetail({
    super.key,
    this.icon,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry textPadding = EdgeInsets.only(left: 10);

    return Row(
      children: [
        icon == null ? const SizedBox() : Icon(icon),
        Padding(
          padding: textPadding,
          child: LabelText(
            text: text,
            size: fontSize,
            fontWeight: icon == null ? FontWeight.w400 : FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
