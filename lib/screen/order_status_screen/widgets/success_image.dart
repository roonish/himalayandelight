import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class SuccessImage extends StatelessWidget {
  const SuccessImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    return SizedBox(
      height: getDeviceExactHeight(180, mediaQ),
      child: const AppImage(
          image:
              'https://cdni.iconscout.com/illustration/premium/thumb/girl-makes-online-purchase-successful-10767343-8687278.png'),
    );
  }
}
