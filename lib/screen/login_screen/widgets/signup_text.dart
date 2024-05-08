import 'package:himalayan_delights/screen/login_screen/imports.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(text: 'Dont have an account? '),
            TextSpan(
              text: 'Sign up',
              style: TextStyle(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
