import 'package:himalayan_delights/screen/home_screen/imports.dart';
import 'package:himalayan_delights/widgets/rating_star.dart';

class FoodNameDescRating extends StatelessWidget {
  const FoodNameDescRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: 'Sushi', color: AppColor.primaryColor, size: 18),
        SizedBox(
          width: MediaQuery.of(context).size.width -
              getDeviceExactWidth(200, mediaQ),
          child: const LabelText(
            text:
                'Sushi jfl j n kfh  nkhoihg jg jgoerhg h hgihg hg ngng kng kng ',
            size: 12,
            maxLine: 2,
          ),
        ),
        SizedBox(
          height: getDeviceExactHeight(8, mediaQ),
        ),
        const RatingStar(starCount: 2),
      ],
    );
  }
}
