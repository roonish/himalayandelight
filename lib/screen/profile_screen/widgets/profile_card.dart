import 'package:himalayan_delights/screen/profile_screen/imports.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry containerPadding = EdgeInsets.all(10);
    const EdgeInsetsGeometry containerMargin = EdgeInsets.symmetric(
      vertical: 10,
    );
    final Map<IconData, String> settingCard = {
      Icons.notifications_none: 'Notification',
      Icons.payment: 'Payment method',
      Icons.credit_card: 'Rewards credits',
      Icons.settings: 'Setting',
      Icons.insert_invitation_rounded: 'Invite Friends',
      Icons.location_city: 'Track order',
      Icons.star: 'Review',
      Icons.help_center: 'Help center',
      Icons.error: 'About us',
      Icons.logout: 'Logout'
    };
    return Column(
        children: List.generate(
            settingCard.length,
            (index) => InkWell(
                  onTap: () {},
                  child: Container(
                    margin: containerMargin,
                    padding: containerPadding,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.searchColor),
                    child: Row(
                      children: [
                        Icon(
                          settingCard.keys.elementAt(index),
                          color: AppColor.primaryColor,
                        ),
                        SizedBox(
                          width: getDeviceExactWidth(10, mediaQ),
                        ),
                        LabelText(
                          text: settingCard.values.elementAt(index),
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                )));
  }
}
