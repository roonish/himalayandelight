import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.quantity,
    this.buttonColor = AppColor.searchColor,
    this.buttonWidth = 110,
    this.buttonLabelSize = 18,
  });

  final int quantity;
  final Color buttonColor;
  final double buttonWidth;
  final double buttonLabelSize;

  @override
  Widget build(BuildContext context) {
    final  ValueNotifier<int> itemCount = ValueNotifier<int>(quantity);
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(
      vertical: 4.0,
      horizontal: 10.0,
    );

    return Container(
      width: getDeviceExactWidth(buttonWidth, mediaQ),
      padding: gapPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: buttonColor),
      child: ValueListenableBuilder<int>(
          valueListenable: itemCount,
          builder: (context, int noOfOrder, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () => noOfOrder == 1 ? null : itemCount.value--,
                    child: Icon(
                      Icons.remove,
                      color: AppColor.primaryColor,
                      size: 15,
                    )),
                LabelText(
                  text: noOfOrder.toString(),
                  color: AppColor.primaryColor,
                  size: buttonLabelSize,
                  fontWeight: FontWeight.bold,
                ),
                InkWell(
                  onTap: () => itemCount.value++,
                  child: Icon(
                    Icons.add,
                    color: AppColor.primaryColor,
                    size: 15,
                  ),
                ),
              ],
            );
          }),
    );
  }
}
