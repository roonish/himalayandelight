import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/screen/authentication_screen/imports.dart';
import 'package:himalayan_delights/screen/cancel_order_screen/imports.dart';

import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/auth/auth_event.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(vertical: 8);

    return Padding(
      padding: gapPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => context.read<AuthBloc>().add(const AuthSignInRequested(
                authprovider: SocialLoginType.facebook)),
            child: const CircularImage(
                image:
                    'https://static.vecteezy.com/system/resources/previews/018/930/476/non_2x/facebook-logo-facebook-icon-transparent-free-png.png'),
          ),
          InkWell(
            onTap: () => context.read<AuthBloc>().add(const AuthSignInRequested(
                authprovider: SocialLoginType.google)),
            child: const CircularImage(
                radius: 25,
                image:
                    'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'),
          ),
        ],
      ),
    );
  }
}
