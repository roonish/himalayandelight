import 'package:himalayan_delights/screen/cancel_order_screen/imports.dart';

class CancelationReasonList extends StatelessWidget {
  final String text;
  final OrderCancelReason radioValue;
  final OrderCancelReason? groupValue;
  final ValueChanged<OrderCancelReason?> onChanged;

  const CancelationReasonList({
    super.key,
    required this.text,
    required this.radioValue,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry bottomPadding = EdgeInsets.only(bottom: 16);

    return Padding(
      padding: bottomPadding,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              onChanged(radioValue);
            },
            child: CustomRadioButton(
              isSelected: groupValue == radioValue,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          LabelText(
            text: text,
            size: 15,
          ),
        ],
      ),
    );
  }
}
