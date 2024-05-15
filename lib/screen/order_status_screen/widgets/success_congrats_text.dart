import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class SuccessCongrats extends StatelessWidget {
  const SuccessCongrats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const LabelText(
      text: 'Congratulation your order is successful.',
      size: 16,
      textAlign: TextAlign.center,
      maxLine: 2,
    );
  }
}
