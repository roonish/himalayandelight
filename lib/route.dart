import 'screen/cancel_order_screen/cancel_order_screen.dart';
import 'screen/category_screen/category_screen.dart';
import 'screen/detail_screen/detail_screen.dart';
import 'screen/notification_screen/notification_screen.dart';
import 'package:himalayan_delights/screen/authentication_screen/login_screen/login_screen.dart';
import 'package:himalayan_delights/screen/authentication_screen/register_screen/register_screen.dart';
import 'package:himalayan_delights/screen/onboarding_screen/onboarding_root_screen.dart';
import 'package:himalayan_delights/screen/order_status_screen/order_success_screen.dart';
import 'package:himalayan_delights/screen/order_status_screen/order_unsuccess_screen.dart';
import 'package:himalayan_delights/screen/root_screen/root_screen.dart';
import 'package:himalayan_delights/screen/track_order/track_order_screen.dart';
import 'package:go_router/go_router.dart';

import 'utils/shared_pref_helper.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        bool showOnboarding = SharedPrefs().showOnboarding;
        bool isGoogleLogin = SharedPrefs().isLogin;

        return showOnboarding
            ? const OnboardingRootScreen()
            : isGoogleLogin
                ? const RootScreen()
                : const LoginScreen();
      },
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
        path: "/home",
        builder: (context, state) => const RootScreen(),
        routes: [
          //path home/category
          GoRoute(
            path: "category",
            builder: (context, state) => const CategoryScreen(),
          ),
          GoRoute(
              path: "detail",
              builder: (context, state) {
                Map<String, dynamic> args = state.extra as Map<String, dynamic>;
                return DetailScreen(
                  title: args['title'] as String,
                  price: args['price'] as String,
                  image: args['image'] as String,
                  desc: args['desc'] as String,
                  rating: args['rating'] as int,
                  calory: args['calory'] as int,
                );
              }),
        ]),
    GoRoute(
      path: "/notification",
      builder: (context, state) => const NotificationScreen(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/orderSuccess",
      builder: (context, state) => const OrderSuccessScreen(),
    ),
    GoRoute(
      path: "/orderUnSuccess",
      builder: (context, state) => const OrderUnSuccessScreen(),
    ),
    GoRoute(
      path: "/trackOrderScreen",
      builder: (context, state) => const TrackOrderScreen(),
    ),
    GoRoute(
      path: "/cancelOrderScreen",
      builder: (context, state) => const CancelOrderScreen(),
    ),
  ],
);
