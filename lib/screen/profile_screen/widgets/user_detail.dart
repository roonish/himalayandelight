import 'package:himalayan_delights/screen/profile_screen/imports.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelText(
          text: 'Apple',
          color: AppColor.primaryColor,
        ),
        LabelText(
          text: 'apple123@gmail.com',
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w500,
          size: 16,
        )
      ],
    );
  }
}
