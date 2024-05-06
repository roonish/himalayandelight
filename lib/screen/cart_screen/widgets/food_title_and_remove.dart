import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class FoodTitleAndRemove extends StatelessWidget {
  final String foodName;
  const FoodTitleAndRemove({
    super.key,
    required this.foodName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      LabelText(
        text: foodName,
        color: AppColor.primaryColor,
        size: 18,
      ),
      InkWell(onTap: () {}, child: const Icon(Icons.delete))
    ]);
  }
}
