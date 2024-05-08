import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/screen/login_screen/imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.all(15);
    final TextEditingController usernameController = TextEditingController();
    const EdgeInsetsGeometry logoPadding = EdgeInsets.symmetric(horizontal: 40);
    const EdgeInsetsGeometry buttonPadding = EdgeInsets.symmetric(vertical: 45);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: bodyPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: getDeviceExactHeight(60, mediaQ)),
              Padding(
                padding: logoPadding,
                child: Image.asset(
                  'assets/images/greenlogo.png',
                  color: AppColor.primaryColor,
                ),
              ),
              SizedBox(height: getDeviceExactHeight(30, mediaQ)),
              LoginField(usernameController: usernameController),
              const LabelText(
                text: 'Forget Password?',
                size: 15,
              ),
              Padding(
                padding: buttonPadding,
                child: AppButton(
                  radius: 18,
                  verticalPadding: 12,
                  ontap: () => context.go('/home'),
                  text: 'Log In',
                  fontSize: 20,
                ),
              ),
              const LoginDivider(),
              const SocialLogin(),
              const Spacer(),
              const SignUpText()
            ],
          ),
        ),
      ),
    );
  }
}
