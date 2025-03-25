import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class TotalCost extends StatelessWidget {
  final double subTotal;
  const TotalCost({
    super.key,
    required this.subTotal,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(vertical: 20);
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0);
    //TODO:Add logic for delivery fee and tips later
    final double deliveryCharge = 10.0;
    final double tips = 20.0;
    final double totalCost = subTotal + deliveryCharge + tips;

    return Padding(
      padding: gapPadding,
      child: Container(
        padding: containerPadding,
        decoration: BoxDecoration(
            color: AppColor.searchColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          children: [
            TotalDetail(leadingTitle: 'Sub total', trailingInfo: '$subTotal'),
            SizedBox(height: getDeviceExactHeight(8, mediaQ)),
            TotalDetail(
                leadingTitle: 'Delivery fee', trailingInfo: '$deliveryCharge'),
            SizedBox(height: getDeviceExactHeight(8, mediaQ)),
            TotalDetail(leadingTitle: 'Tip', trailingInfo: '$tips'),
            SizedBox(height: getDeviceExactHeight(8, mediaQ)),
            TotalDetail(leadingTitle: 'Total', trailingInfo: '$totalCost'),
          ],
        ),
      ),
    );
  }
}
