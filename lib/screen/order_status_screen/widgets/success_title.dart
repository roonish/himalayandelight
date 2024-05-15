import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class SuccessTitle extends StatelessWidget {
  const SuccessTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry textPadding = EdgeInsets.symmetric(vertical: 20);
    return Padding(
      padding: textPadding,
      child: LabelText(
        text: 'Successful',
        color: AppColor.primaryColor,
        size: 26,
      ),
    );
  }
}
