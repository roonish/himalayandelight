import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DeliveryDetail(
          text: 'Yorkland Blvd',
          fontSize: 18,
          icon: Icons.pin_drop,
        ),
        DeliveryDetail(
          text: 'Delivery Place',
          fontSize: 15,
        ),
      ],
    );
  }
}
