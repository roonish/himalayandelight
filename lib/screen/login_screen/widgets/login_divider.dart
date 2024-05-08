import 'package:himalayan_delights/screen/login_screen/imports.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry textPadding = EdgeInsets.symmetric(horizontal: 10);
    return const Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: textPadding,
          child: LabelText(
            text: 'Or connect with',
            size: 14,
            color: AppColor.headerColor,
          ),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
