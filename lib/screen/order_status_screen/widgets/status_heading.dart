import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class StatusHeading extends StatelessWidget {
  final String text;
  const StatusHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry textPadding = EdgeInsets.symmetric(vertical: 20);
    return Padding(
      padding: textPadding,
      child: LabelText(
        text: text,
        color: AppColor.primaryColor,
        size: 26,
      ),
    );
  }
}
