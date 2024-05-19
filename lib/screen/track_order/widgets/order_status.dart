import 'package:himalayan_delights/screen/track_order/imports.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({
    super.key,
    required this.deliveryStatus,
  });

  final Map<IconData, String> deliveryStatus;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(vertical: 20);

    return Padding(
      padding: gapPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            4,
            (index) => Column(
                  children: [
                    Container(
                        color: AppColor.searchColor,
                        height: 60,
                        width: 60,
                        child: Icon(
                          deliveryStatus.keys.elementAt(index),
                          color: AppColor.primaryColor,
                        )),
                    const SizedBox(height: 10),
                    LabelText(
                        text: deliveryStatus.values.elementAt(index), size: 15)
                  ],
                )),
      ),
    );
  }
}
