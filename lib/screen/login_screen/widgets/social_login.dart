import 'package:himalayan_delights/screen/login_screen/imports.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry gapPadding = EdgeInsets.symmetric(vertical: 8);

    return const Padding(
      padding: gapPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularImage(
              image:
                  'https://static.vecteezy.com/system/resources/previews/018/930/476/non_2x/facebook-logo-facebook-icon-transparent-free-png.png'),
          CircularImage(
              radius: 25,
              image:
                  'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'),
        ],
      ),
    );
  }
}
