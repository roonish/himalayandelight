import 'package:himalayan_delights/screen/order_status_screen/imports.dart';

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry buttonPadding = EdgeInsets.only(top: 20);
    return Padding(
      padding: buttonPadding,
      child: AppButton(
        text: 'Back to home',
        verticalPadding: 15,
        fontSize: 18,
        ontap: () => context.go('/home'),
      ),
    );
  }
}
