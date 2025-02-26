import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class FoodDetail extends StatelessWidget {
  final int calory;
  final int rating;
  const FoodDetail({
    super.key,
    required this.calory,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FoodSubInfo(
            icon: Icons.star,
            iconColor: AppColor.ratingColor,
            title: '$rating'),
        FoodSubInfo(
            icon: Icons.local_fire_department_sharp,
            iconColor: AppColor.primaryColor,
            title: '$calory kcal'),
        FoodSubInfo(
            icon: Icons.access_time_filled,
            iconColor: AppColor.primaryColor,
            title: '9-15 min')
      ],
    );
  }
}
