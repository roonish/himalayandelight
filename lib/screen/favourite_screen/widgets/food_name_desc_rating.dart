import 'package:himalayan_delights/screen/home_screen/imports.dart';
import 'package:himalayan_delights/widgets/rating_star.dart';

class FoodNameDescRating extends StatelessWidget {
  final String foodName;
  final String desc;
  final int rating;
  const FoodNameDescRating({
    required this.foodName,
    super.key,
    required this.desc,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: foodName, color: AppColor.primaryColor, size: 18),
        SizedBox(
          width: MediaQuery.of(context).size.width -
              getDeviceExactWidth(200, mediaQ),
          child: LabelText(
            text: desc,
            size: 12,
            maxLine: 2,
          ),
        ),
        SizedBox(
          height: getDeviceExactHeight(8, mediaQ),
        ),
        RatingStar(starCount: rating),
      ],
    );
  }
}
