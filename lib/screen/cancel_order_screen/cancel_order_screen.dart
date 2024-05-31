import 'package:himalayan_delights/screen/cancel_order_screen/imports.dart';

class CancelOrderScreen extends StatefulWidget {
  const CancelOrderScreen({
    super.key,
  });

  @override
  State<CancelOrderScreen> createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
  // Initial value
  OrderCancelReason? _selectedReason = OrderCancelReason.longWait;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.all(20);
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
                text: 'Please select the reason for cancellation:',
                size: 15,
              ),
              const Divider(),
              SizedBox(height: getDeviceExactHeight(10, mediaQ)),
              CancelationReasonList(
                text: 'Waiting for long time.',
                radioValue: OrderCancelReason.longWait,
                groupValue: _selectedReason,
                onChanged: (value) {
                  setState(() {
                    _selectedReason = value;
                  });
                },
              ),
              CancelationReasonList(
                text: 'Unable to contact with delivery boy.',
                radioValue: OrderCancelReason.noContactWithDeliveryPerson,
                groupValue: _selectedReason,
                onChanged: (value) {
                  setState(() {
                    _selectedReason = value;
                  });
                },
              ),
              CancelationReasonList(
                text: 'Wrong address shown.',
                radioValue: OrderCancelReason.wrongAddressShown,
                groupValue: _selectedReason,
                onChanged: (value) {
                  setState(() {
                    _selectedReason = value;
                  });
                },
              ),
              CancelationReasonList(
                text: 'The price is not reasonable.',
                radioValue: OrderCancelReason.nonReasonablePrice,
                groupValue: _selectedReason,
                onChanged: (value) {
                  setState(() {
                    _selectedReason = value;
                  });
                },
              ),
              CancelationReasonList(
                text: 'I just want to cancel',
                radioValue: OrderCancelReason.justWantToCancel,
                groupValue: _selectedReason,
                onChanged: (value) {
                  setState(() {
                    _selectedReason = value;
                  });
                },
              ),
              CancelationReasonList(
                text: 'I want to order some thing else.',
                radioValue: OrderCancelReason.orderSomethingElse,
                groupValue: _selectedReason,
                onChanged: (value) {
                  setState(() {
                    _selectedReason = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              LabelText(
                text: 'Other reason',
                size: 20,
                color: AppColor.primaryColor,
              ),
              const OtherReasonTextfield(),
              SizedBox(
                height: getDeviceExactHeight(40, mediaQ),
              ),
              const AppButton(
                verticalPadding: 15,
                text: 'Submit here',
              )
            ],
          ),
        ),
      ),
    );
  }
}
