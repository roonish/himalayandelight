import 'package:himalayan_delights/screen/cart_screen/imports.dart';

import '../../../model/foodItem.dart';

class CaloriesAndPrice extends StatelessWidget {
  final FoodItem foodItem;
  const CaloriesAndPrice({
    super.key,
    required this.foodItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartItemDetail(
          icon: Icons.local_fire_department_sharp,
          label: '${foodItem.calory} calories',
          iconColor: AppColor.primaryColor,
        ),
        LabelText(
          text: "\$ ${foodItem.unitPrice}",
          size: 15,
        ),
      ],
    );
  }
}
