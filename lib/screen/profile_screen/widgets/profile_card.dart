import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/bloc/auth/auth_bloc.dart';
import 'package:himalayan_delights/screen/cancel_order_screen/imports.dart';
import 'package:himalayan_delights/screen/profile_screen/imports.dart';
import 'package:himalayan_delights/widgets/app_alert_dialog.dart';

import '../../../bloc/auth/auth_event.dart';
import '../../../bloc/auth/auth_state.dart';
import '../../../utils/shared_pref_helper.dart';

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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthInitial) {
          SharedPrefs().isLogin = false;
          context.go('/');
        }
      },
      child: Column(
          children: List.generate(
              settingCard.length,
              (index) => GestureDetector(
                    onTap: () {
                      settingCard.containsValue('Logout')
                          ? showDialog(
                              context: context,
                              builder: (context) {
                                return AppAlertDialog(
                                  title: "Logout",
                                  content:
                                      "Are you sure, do you want to logout?",
                                  onConfirm: () async {
                                    context.read<AuthBloc>().add(
                                        const AuthSignOutRequested(
                                            authprovider:
                                                SocialLoginType.google));
                                    // to remove dialog box
                                    Navigator.pop(context);
                                  },
                                );
                              },
                            )
                          : null;
                    },
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
                  ))),
    );
  }
}
