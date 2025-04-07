import 'package:himalayan_delights/screen/authentication_screen/imports.dart';

class SignUpText extends StatelessWidget {
  final String signUpPreText;
  final String signInOrUpText;
  final VoidCallback onTap;
  const SignUpText({
    super.key,
    required this.signUpPreText,
    required this.signInOrUpText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: signUpPreText),
            TextSpan(
              text: signInOrUpText,
              style: TextStyle(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
