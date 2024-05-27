import 'package:flutter/material.dart';
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
    const EdgeInsetsGeometry boxPadding = EdgeInsets.all(12);
    const EdgeInsetsGeometry textPadding = EdgeInsets.only(top: 5, bottom: 2);
    final Size mediaQ = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar(context, title: 'Cancel order'),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LabelText(text: 'Please select the reason for cancellation:'),
            Divider(),
            CancelationReasonList(
                text: 'Waiting for long time.',
                radioValue: OrderCancelReason.longWait),
            CancelationReasonList(
                text: 'Unable to contact with delivery boy.',
                radioValue: OrderCancelReason.noContactWithDeliveryPerson),
            CancelationReasonList(
                text: 'Wrong address shown.',
                radioValue: OrderCancelReason.wrongAddressShown),
            CancelationReasonList(
                text: 'Thw price is not reasonable.',
                radioValue: OrderCancelReason.nonReasonablePrice),
            CancelationReasonList(
                text: 'I just want to cancel',
                radioValue: OrderCancelReason.justWantToCancel),
            CancelationReasonList(
                text: 'I want to order some thing else.',
                radioValue: OrderCancelReason.orderSomethingElse),
          ],
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
      title: LabelText(text: widget.text),
      leading: Radio<OrderCancelReason>(
        value: widget.radioValue,
        onChanged: (value) {
          setState(() {
            orderCancelReason = value;
          });
        },
        groupValue: orderCancelReason,
      ),
    );
  }
}
