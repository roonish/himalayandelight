import 'package:himalayan_delights/screen/notification_screen/imports.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.symmetric(horizontal: 15);

    return Scaffold(
        appBar: appBar(context, title: 'Notification'),
        body: Padding(
          padding: bodyPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelText(
                text: 'You have 3 notification today',
                color: AppColor.primaryColor,
                size: 15,
              ),
              SizedBox(
                height: getDeviceExactHeight(10, mediaQ),
              ),
              const NotificationsList()
            ],
          ),
        ));
  }
}
