import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/screen/profile_screen/imports.dart';

import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/auth/auth_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 10);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: bodyPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if (state is AuthSuccess) {
                      return CircularImage(
                        radius: 50,
                        image: state.user.photoURL ??
                            'https://buffer.com/library/content/images/2020/05/Ash-Read.png',
                      );
                    } else {
                      return const CircularImage(
                        radius: 50,
                        image:
                            'https://buffer.com/library/content/images/2020/05/Ash-Read.png',
                      );
                    }
                  },
                ),
                const UserDetail(),
                SizedBox(
                  height: getDeviceExactHeight(10, mediaQ),
                ),
                const ProfileCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
