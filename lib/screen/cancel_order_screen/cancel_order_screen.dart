import 'package:himalayan_delights/screen/cart_screen/imports.dart';
import 'package:himalayan_delights/utils/enums.dart';

class CancelOrderScreen extends StatefulWidget {
  const CancelOrderScreen({
    super.key,
  });

  @override
  State<CancelOrderScreen> createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.all(15);
    final Size mediaQ = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar(context, title: 'Cancel order'),
      body: SingleChildScrollView(
        child: Padding(
          padding: bodyPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LabelText(
                  text: 'Please select the reason for cancellation:', size: 15),
              const Divider(),
              SizedBox(height: getDeviceExactHeight(10, mediaQ)),
              const CancelationReasonList(
                  text: 'Waiting for long time.',
                  radioValue: OrderCancelReason.longWait),
              const CancelationReasonList(
                  text: 'Unable to contact with delivery boy.',
                  radioValue: OrderCancelReason.noContactWithDeliveryPerson),
              const CancelationReasonList(
                  text: 'Wrong address shown.',
                  radioValue: OrderCancelReason.wrongAddressShown),
              const CancelationReasonList(
                  text: 'The price is not reasonable.',
                  radioValue: OrderCancelReason.nonReasonablePrice),
              const CancelationReasonList(
                  text: 'I just want to cancel',
                  radioValue: OrderCancelReason.justWantToCancel),
              const CancelationReasonList(
                  text: 'I want to order some thing else.',
                  radioValue: OrderCancelReason.orderSomethingElse),
            ],
          ),
        ),
      ),
    );
  }
}

class CancelationReasonList extends StatefulWidget {
  final String text;
  final OrderCancelReason radioValue;

  const CancelationReasonList(
      {super.key, required this.text, required this.radioValue});

  @override
  State<CancelationReasonList> createState() => _CancelationReasonListState();
}

class _CancelationReasonListState extends State<CancelationReasonList> {
  @override
  Widget build(BuildContext context) {
    OrderCancelReason? orderCancelReason = OrderCancelReason.justWantToCancel;

    return ListTile(
      title: LabelText(
        text: widget.text,
        size: 15,
      ),
      leading: Radio<OrderCancelReason>(
        value: widget.radioValue,
        onChanged: (value) {
          setState(() {
            orderCancelReason = value;
          });
        },
        fillColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return AppColor.primaryColor;
            }
            return AppColor.headerColor;
          },
        ),
        groupValue: orderCancelReason,
        visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
