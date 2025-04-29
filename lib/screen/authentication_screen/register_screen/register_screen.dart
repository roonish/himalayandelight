import 'package:himalayan_delights/screen/authentication_screen/imports.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.all(15);
    final TextEditingController usernameController = TextEditingController();
    const EdgeInsetsGeometry logoPadding = EdgeInsets.symmetric(horizontal: 40);
    const EdgeInsetsGeometry buttonPadding = EdgeInsets.symmetric(vertical: 20);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: bodyPadding,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: getDeviceExactHeight(30, mediaQ)),
                    Padding(
                      padding: logoPadding,
                      child: Image.asset(
                        'assets/images/greenlogo.png',
                        color: AppColor.primaryColor,
                      ),
                    ),
                    LabelText(
                      text: 'Create Account',
                      color: AppColor.primaryColor,
                      size: 25,
                    ),
                    SizedBox(height: getDeviceExactHeight(20, mediaQ)),
                    RegisterField(usernameController: usernameController),
                    Padding(
                      padding: buttonPadding,
                      child: AppButton(
                        radius: 18,
                        verticalPadding: 12,
                        ontap: () => context.go('/home'),
                        text: 'Sign up',
                        fontSize: 20,
                      ),
                    ),
                    const LoginDivider(),
                    const SocialLogin(),
                  ],
                ),
                SignUpText(
                  signUpPreText: 'Already have an account? ',
                  signInOrUpText: 'Sign in',
                  onTap: () => context.go('/login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
