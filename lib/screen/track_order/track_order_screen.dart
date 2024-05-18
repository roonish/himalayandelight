import 'package:himalayan_delights/screen/track_order/imports.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: getDeviceExactHeight(200, mediaQ),
                color: AppColor.primaryColor,
              ),
              OrderStatus(deliveryStatus: deliveryStatus),
              const OrderDetail(title: 'Order Number', detail: '5564353445'),
              const OrderDetail(title: 'Address', detail: '52 Stanland Dr. ON'),
              const DeliveryCart(),
            ],
          ),
        ),
      ),
    );
  }
}

class DeliveryCart extends StatelessWidget {
  const DeliveryCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.searchColor,
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.only(top: 14),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                  ),
                  Column(
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
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Divider(
                color: AppColor.textColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LabelText(text: 'Delivery boy'),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 35,
                    color: AppColor.primaryColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      Padding(
                        padding: EdgeInsets.only(left: 25),
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
                      ),
                    ],
                  ),
                  Icon(
                    Icons.call,
                    color: AppColor.primaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderStatus extends StatelessWidget {
  const OrderStatus({
    super.key,
    required this.deliveryStatus,
  });

  final Map<IconData, String> deliveryStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            4,
            (index) => Column(
                  children: [
                    Container(
                        color: AppColor.searchColor,
                        height: 60,
                        width: 60,
                        child: Icon(
                          deliveryStatus.keys.elementAt(index),
                          color: AppColor.primaryColor,
                        )),
                    const SizedBox(height: 10),
                    LabelText(
                        text: deliveryStatus.values.elementAt(index), size: 15)
                  ],
                )),
      ),
    );
  }
}

class DeliveryDetail extends StatelessWidget {
  final IconData? icon;
  final String text;
  final double fontSize;
  const DeliveryDetail({
    super.key,
    this.icon,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon == null ? const SizedBox() : Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: LabelText(
            text: text,
            size: fontSize,
            fontWeight: icon == null ? FontWeight.w400 : FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class OrderDetail extends StatelessWidget {
  final String title;
  final String detail;
  const OrderDetail({
    super.key,
    required this.title,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(vertical: 15);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(text: title, color: AppColor.primaryColor, size: 21),
        Padding(
          padding: gapPadding,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: AppColor.searchColor,
                borderRadius: BorderRadius.circular(8)),
            child: LabelText(text: detail, size: 15),
          ),
        ),
      ],
    );
  }
}
