import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class CaloriesAndWeight extends StatelessWidget {
  const CaloriesAndWeight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartItemDetail(
          icon: Icons.fitness_center,
          label: '400 g',
          iconColor: AppColor.primaryColor,
        ),
        const CartItemDetail(
          icon: Icons.local_fire_department_sharp,
          label: '50 calories',
          iconColor: AppColor.ratingColor,
        )
      ],
    );
  }
}
