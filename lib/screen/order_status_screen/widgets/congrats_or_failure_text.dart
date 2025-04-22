import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class CongratsOrFailureText extends StatelessWidget {
  final String text;
   const CongratsOrFailureText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return LabelText(
      text: text,
      size: 16,
      textAlign: TextAlign.center,
      maxLine: 2,
    );
  }
}
