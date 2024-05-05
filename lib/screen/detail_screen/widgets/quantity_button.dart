import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.mediaQ,
    required this.itemCount,
  });

  final Size mediaQ;
  final ValueNotifier<int> itemCount;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(
      vertical: 4.0,
      horizontal: 10.0,
    );

    return Container(
      width: getDeviceExactWidth(110, mediaQ),
      padding: gapPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColor.searchColor),
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
                  size: 18,
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
