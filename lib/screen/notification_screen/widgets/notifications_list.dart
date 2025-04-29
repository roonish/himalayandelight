import 'package:himalayan_delights/screen/notification_screen/imports.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, String> notifcationType = {
      'Confirmed': 'Your order is confirmed',
      'Order': 'Your order is delevered',
      'Unread Messages': 'You have 3 unread messages'
    };
    List<IconData> icons = [
      Icons.check,
      Icons.delivery_dining,
      Icons.mark_as_unread
    ];
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry containerPadding =
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0);
    const EdgeInsetsGeometry containerMargin =
        EdgeInsets.symmetric(vertical: 10);

    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            padding: containerPadding,
            margin: containerMargin,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColor.searchColor),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColor.buttonColor,
                  child: Icon(
                    icons[index],
                    color: AppColor.primaryColor,
                  ),
                ),
                SizedBox(width: getDeviceExactWidth(10, mediaQ)),
                Expanded(
                  child: IntrinsicWidth(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NotificationStatus(
                            notificationStatus:
                                notifcationType.keys.elementAt(index)),
                        SizedBox(
                          height: getDeviceExactHeight(5, mediaQ),
                        ),
                        NotificationDetail(
                            notificationDesc:
                                notifcationType.values.elementAt(index)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
