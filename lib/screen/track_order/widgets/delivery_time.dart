import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DeliveryDetail(
          text: '9:20 pm',
          fontSize: 18,
          icon: Icons.lock_clock,
        ),
        DeliveryDetail(
          text: 'Delivery Time',
          fontSize: 15,
        ),
      ],
    );
  }
}
