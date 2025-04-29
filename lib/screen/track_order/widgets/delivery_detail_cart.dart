import 'package:himalayan_delights/screen/track_order/imports.dart';

class DeliveryDetailCart extends StatelessWidget {
  const DeliveryDetailCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.symmetric(vertical: 10);
    const EdgeInsetsGeometry containerGapPadding = EdgeInsets.only(top: 14);
    
    return Padding(
      padding: containerPadding,
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.searchColor,
            borderRadius: BorderRadius.circular(8)),
        padding: containerGapPadding,
        child: const Column(
          children: [
            DeliveryTimeAddress(),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: AppColor.textColor,
              ),
            ),
            DeliveryTitle(),
            DeliveryPersonDetail(),
          ],
        ),
      ),
    );
  }
}
