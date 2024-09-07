import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/screen/profile_screen/imports.dart';
import '../../../bloc/auth/auth_bloc.dart';
import '../../../bloc/auth/auth_state.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          final User user;
          user = state.user;
          return Column(
            children: [
              LabelText(
                text: user.displayName!,
                color: AppColor.primaryColor,
              ),
              LabelText(
                text: user.email!,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w500,
                size: 16,
              )
            ],
          );
        } else {
          return Column(
            children: [
              LabelText(
                text: 'User',
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
      },
    );
  }
}
