import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class TotalCost extends StatelessWidget {
  const TotalCost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(vertical: 20);
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0);
    return Padding(
      padding: gapPadding,
      child: Container(
        padding: containerPadding,
        decoration: BoxDecoration(
            color: AppColor.searchColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            const TotalDetail(leadingTitle: 'Sub total', trailingInfo: '120'),
            SizedBox(height: getDeviceExactHeight(8, mediaQ)),
            const TotalDetail(leadingTitle: 'Delivery fee', trailingInfo: '40'),
            SizedBox(height: getDeviceExactHeight(8, mediaQ)),
            const TotalDetail(leadingTitle: 'Tip', trailingInfo: '10'),
            SizedBox(height: getDeviceExactHeight(8, mediaQ)),
            const TotalDetail(leadingTitle: 'Total', trailingInfo: '170'),
          ],
        ),
      ),
    );
  }
}
