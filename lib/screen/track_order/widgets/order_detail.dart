import 'package:himalayan_delights/screen/track_order/imports.dart';

class OrderDetail extends StatelessWidget {
  final String title;
  final String detail;
  const OrderDetail({
    super.key,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(vertical: 15);
    const EdgeInsetsGeometry contentPadding = EdgeInsets.all(12);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: title, color: AppColor.primaryColor, size: 21),
        Padding(
          padding: gapPadding,
          child: Container(
            width: double.infinity,
            padding: contentPadding,
            decoration: BoxDecoration(
                color: AppColor.searchColor,
                borderRadius: BorderRadius.circular(8)),
            child: LabelText(text: detail, size: 15),
          ),
        ),
      ],
    );
  }
}
