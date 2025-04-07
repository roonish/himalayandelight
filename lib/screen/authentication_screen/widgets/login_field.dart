import 'package:himalayan_delights/screen/authentication_screen/imports.dart';

class LoginField extends StatelessWidget {
  const LoginField({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry contentPadding =
        EdgeInsets.symmetric(vertical: 13, horizontal: 20);
    const EdgeInsetsGeometry gapPadding = EdgeInsets.only(top: 25, bottom: 10);

    return Column(
      children: [
        AppTextField(
          hintText: 'Email',
          contentPadding: contentPadding,
          trailing: const Icon(Icons.email_outlined),
          onChanged: (String value) {},
          textEditingController: usernameController,
        ),
        Padding(
          padding: gapPadding,
          child: AppTextField(
            hintText: 'Password',
            contentPadding: contentPadding,
            trailing: const Icon(Icons.key_sharp),
            onChanged: (String value) {},
            textEditingController: usernameController,
          ),
        ),
      ],
    );
  }
}
