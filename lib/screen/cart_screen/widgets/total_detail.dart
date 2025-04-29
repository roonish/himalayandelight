
import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class TotalDetail extends StatelessWidget {
  final String leadingTitle;
  final String trailingInfo;
  const TotalDetail({
    super.key,
    required this.leadingTitle,
    required this.trailingInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LabelText(
          text: leadingTitle,
          color: AppColor.primaryColor,
          size: 18,
        ),
        LabelText(
          text: '\$ $trailingInfo',
          color: AppColor.primaryColor,
          size: 18,
        ),
      ],
    );
  }
}
