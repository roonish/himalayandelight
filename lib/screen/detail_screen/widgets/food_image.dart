import 'package:himalayan_delights/screen/detail_screen/imports.dart';

class FoodImage extends StatelessWidget {
  const FoodImage({
    super.key,
    required this.mediaQ,
    required this.image,
  });

  final Size mediaQ;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getDeviceExactHeight(200, mediaQ),
      width: double.infinity,
      color: AppColor.primaryColor,
      child: AppImage(image: image),
    );
  }
}
