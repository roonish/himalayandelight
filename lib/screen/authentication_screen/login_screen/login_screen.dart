import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/screen/authentication_screen/imports.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/auth/auth_state.dart';
import '../../../utils/shared_pref_helper.dart';
import '../../../utils/snackbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.all(15);
    final TextEditingController usernameController = TextEditingController();
    const EdgeInsetsGeometry logoPadding = EdgeInsets.symmetric(horizontal: 40);
    const EdgeInsetsGeometry buttonPadding = EdgeInsets.symmetric(vertical: 45);
    final Widget loginScreen = Column(
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
        SignUpText(
          signUpPreText: 'Dont have an account? ',
          signInOrUpText: 'Sign up',
          onTap: () => context.go('/register'),
        )
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: bodyPadding,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccess) {
                SharedPrefs().isLogin = true;
                context.go('/home');
              } else if (state is AuthFailure) {
                SnackBarHelper.showError(context, state.error);
              }
            },
            builder: (context, state) {
              if (state is AuthInProgress) {
                return Stack(
                  children: [
                    loginScreen,
                    Center(
                      child: SizedBox(
                        height: getDeviceExactHeight(20, mediaQ),
                        width: getDeviceExactWidth(20, mediaQ),
                        child: const CircularProgressIndicator(
                          color: AppColor.headerColor,
                        ),
                      ),
                    ),
                  ],
                );
              }
              return loginScreen;
            },
          ),
        ),
      ),
    );
  }
}
