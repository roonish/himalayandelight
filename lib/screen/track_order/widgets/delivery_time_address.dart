import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryTimeAddress extends StatelessWidget {
  const DeliveryTimeAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(horizontal: 15);

    return const Padding(
      padding: gapPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DeliveryTime(),
          DeliveryAddress(),
        ],
      ),
    );
  }
}
