import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryPersonDetail extends StatelessWidget {
  const DeliveryPersonDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding =
        EdgeInsets.symmetric(horizontal: 15, vertical: 10);

    return Padding(
      padding: gapPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              CircularImage(
                radius: 35,
                image:
                    'https://buffer.com/library/content/images/2020/05/Ash-Read.png',
              ),
              DeliveryNamePhoneText(),
            ],
          ),
          Icon(
            Icons.call,
            color: AppColor.primaryColor,
          )
        ],
      ),
    );
  }
}
