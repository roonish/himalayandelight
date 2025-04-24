import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryNamePhoneText extends StatelessWidget {
  const DeliveryNamePhoneText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry textPadding = EdgeInsets.only(left: 25);

    return const Padding(
      padding: textPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LabelText(
            text: 'Ronish',
            size: 18,
          ),
          LabelText(
            text: '437-432-4650',
            size: 18,
          ),
        ],
      ),
    );
  }
}
