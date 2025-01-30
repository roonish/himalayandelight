import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/bloc/fav/fav_bloc.dart';
import 'package:himalayan_delights/screen/favourite_screen/widgets/food_name_desc_rating.dart';
import 'package:himalayan_delights/screen/home_screen/imports.dart';

class ItemCard extends StatelessWidget {
  final int foodId;
  final String foodName;
  final String desc;
  final int rating;
  const ItemCard({
    super.key,
    required this.image,
    required this.foodName,
    required this.desc,
    required this.rating,
    required this.foodId,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.symmetric(horizontal: 5);
    const EdgeInsetsGeometry containerMargin =
        EdgeInsets.symmetric(vertical: 10);
    const EdgeInsetsGeometry iconPadding = EdgeInsets.all(5);
    final favEvent = BlocProvider.of<FavBloc>(context);

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
            Padding(
              padding: containerMargin,
              child: FoodNameDescRating(
                foodName: foodName,
                desc: desc,
                rating: rating,
              ),
            ),
            Container(
                alignment: Alignment.topRight,
                padding: iconPadding,
                child: InkWell(
                    onTap: () {
                      favEvent.add(DeleteFav(id: foodId));
                    },
                    child: const Icon(Icons.delete)))
          ],
        ),
      ),
    );
  }
}
