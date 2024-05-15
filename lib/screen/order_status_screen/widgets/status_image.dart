import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class StatusImage extends StatelessWidget {
  final String image;
  const StatusImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return SizedBox(
      height: getDeviceExactHeight(180, mediaQ),
      child: AppImage(image: image),
    );
  }
}
