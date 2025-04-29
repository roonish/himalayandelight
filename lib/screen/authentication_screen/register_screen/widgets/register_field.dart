import 'package:himalayan_delights/screen/authentication_screen/imports.dart';

class RegisterField extends StatelessWidget {
  const RegisterField({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry contentPadding =
        EdgeInsets.symmetric(vertical: 13, horizontal: 20);
    const EdgeInsetsGeometry gapPadding = EdgeInsets.only(bottom: 18);

    return Column(
      children: [
        Padding(
          padding: gapPadding,
          child: AppTextField(
            hintText: 'Username',
            contentPadding: contentPadding,
            trailing: const Icon(Icons.person_2),
            onChanged: (String value) {},
            textEditingController: usernameController,
          ),
        ),
        Padding(
          padding: gapPadding,
          child: AppTextField(
            hintText: 'Email',
            contentPadding: contentPadding,
            trailing: const Icon(Icons.email),
            onChanged: (String value) {},
            textEditingController: usernameController,
          ),
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
        Padding(
          padding: gapPadding,
          child: AppTextField(
            hintText: 'Confirm Password',
            contentPadding: contentPadding,
            trailing: const Icon(Icons.lock),
            onChanged: (String value) {},
            textEditingController: usernameController,
          ),
        ),
      ],
    );
  }
}
