import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class CartList extends StatelessWidget {
  const CartList({
    super.key,
    required this.images,
    required this.itemCount,
  });

  final List<String> images;
  final ValueNotifier<int> itemCount;

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.only(bottom: 20, top: 10, right: 10, left: 5);
    const EdgeInsetsGeometry containerMargin =
        EdgeInsets.symmetric(vertical: 10);

    return SizedBox(
      height: getDeviceExactHeight(275, mediaQ),
      width: double.infinity,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding: containerPadding,
            margin: containerMargin,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppColor.searchColor),
            child: Row(
              children: [
                CircularImage(radius: 40, image: images[index]),
                SizedBox(
                  width: getDeviceExactWidth(10, mediaQ),
                ),
                Expanded(
                  child: IntrinsicWidth(
                    child: Column(
                      children: [
                        const FoodTitleAndRemove(
                          foodName: 'Pasta',
                        ),
                        const Padding(
                          padding: containerMargin,
                          child: CaloriesAndWeight(),
                        ),
                        PriceAndQuantity(itemCount: itemCount),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
