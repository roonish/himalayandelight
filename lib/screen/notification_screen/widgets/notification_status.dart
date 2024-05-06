import 'package:himalayan_delights/screen/notification_screen/imports.dart';

class NotificationStatus extends StatelessWidget {
  const NotificationStatus({
    super.key,
    required this.notificationStatus,
  });

  final String notificationStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LabelText(
          text: notificationStatus,
          color: AppColor.primaryColor,
          size: 15,
        ),
        InkWell(onTap: () {}, child: const Icon(Icons.delete)),
      ],
    );
  }
}
