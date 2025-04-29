import 'package:himalayan_delights/screen/notification_screen/imports.dart';

class NotificationDetail extends StatelessWidget {
  const NotificationDetail({
    super.key,
    required this.notificationDesc,
  });

  final String notificationDesc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LabelText(
          text: notificationDesc,
          size: 14,
        ),
        LabelText(
          text: '11:20 am',
          color: AppColor.primaryColor,
          size: 14,
        ),
      ],
    );
  }
}
