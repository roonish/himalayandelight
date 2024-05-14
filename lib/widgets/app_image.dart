import 'package:himalayan_delights/screen/home_screen/imports.dart';

class AppImage extends StatelessWidget {
  final bool isAssetImage;
  final String image;
  const AppImage({super.key, this.isAssetImage = false, required this.image});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return isAssetImage
        ? Image.asset(
            image,
            fit: BoxFit.cover,
          )
        : CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(
              child: SizedBox(
                height: getDeviceExactHeight(20, mediaQ),
                width: getDeviceExactWidth(20, mediaQ),
                child: const CircularProgressIndicator(
                  color: AppColor.headerColor,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
  }
}
