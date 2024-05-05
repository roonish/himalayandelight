import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FoodSubInfo(
            icon: Icons.star, iconColor: AppColor.ratingColor, title: '4.5'),
        FoodSubInfo(
            icon: Icons.local_fire_department_sharp,
            iconColor: AppColor.primaryColor,
            title: '354 g| 135 kcal'),
        FoodSubInfo(
            icon: Icons.access_time_filled,
            iconColor: AppColor.primaryColor,
            title: '9-15 min')
      ],
    );
  }
}
