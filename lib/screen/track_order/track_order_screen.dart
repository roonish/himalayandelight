import 'package:himalayan_delights/screen/authentication_screen/imports.dart';
import 'package:himalayan_delights/screen/track_order/imports.dart';
import 'package:himalayan_delights/screen/track_order/widgets/mapview.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(horizontal: 20);
    Map<IconData, String> deliveryStatus = {
      Icons.check: 'Conformed',
      Icons.card_giftcard: 'Preparing',
      Icons.bike_scooter: 'On Way',
      Icons.food_bank: 'Delivered',
    };

    return Scaffold(
      appBar: appBar(context, title: 'Track Order'),
      body: SingleChildScrollView(
        child: Padding(
          padding: gapPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   height: getDeviceExactHeight(200, mediaQ),
              //   color: AppColor.primaryColor,
              //   child: const MapView(),
              // ),
              OrderStatus(deliveryStatus: deliveryStatus),
              const OrderDetail(title: 'Order Number', detail: '5564353445'),
              const OrderDetail(title: 'Address', detail: '52 Stanland Dr. ON'),
              InkWell(
                child: const DeliveryDetailCart(),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MapView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
