import 'package:himalayan_delights/screen/favourite_screen/widgets/food_name_desc_rating.dart';
import 'package:himalayan_delights/screen/home_screen/imports.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.symmetric(horizontal: 5);
    const EdgeInsetsGeometry containerMargin =
        EdgeInsets.symmetric(vertical: 10);
    const EdgeInsetsGeometry iconPadding = EdgeInsets.all(5);

    return Container(
      padding: containerPadding,
      margin: containerMargin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColor.searchColor),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularImage(radius: 40, image: image),
            const Padding(
              padding: containerMargin,
              child: FoodNameDescRating(),
            ),
            Container(
                alignment: Alignment.topRight,
                padding: iconPadding,
                child: const Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
