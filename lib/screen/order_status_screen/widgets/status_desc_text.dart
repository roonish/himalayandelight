import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class StatusDescText extends StatelessWidget {
  final String text;
  const StatusDescText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry labelPadding =
        EdgeInsets.only(top: 20, bottom: 50);
    return Padding(
      padding: labelPadding,
      child: LabelText(
        text: text,
        textAlign: TextAlign.center,
        maxLine: 2,
        size: 17,
      ),
    );
  }
}
