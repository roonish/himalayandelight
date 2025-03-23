import 'package:himalayan_delights/screen/cart_screen/imports.dart';

import '../../../model/foodItem.dart';
import '../../../widgets/rating_star.dart';

class CaloriesAndWeight extends StatelessWidget {
  final FoodItem foodItem;
  const CaloriesAndWeight({
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
        RatingStar(starCount: foodItem.rating),
      ],
    );
  }
}
