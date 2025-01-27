import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:himalayan_delights/bloc/auth/auth_bloc.dart';
import 'package:himalayan_delights/bloc/fav/fav_bloc.dart';
import 'package:himalayan_delights/repositories/fav_repository.dart';
import 'package:himalayan_delights/screen/authentication_screen/login_screen/login_screen.dart';
import 'package:himalayan_delights/screen/authentication_screen/register_screen/register_screen.dart';
import 'package:himalayan_delights/screen/onboarding_screen/onboarding_root_screen.dart';
import 'package:himalayan_delights/screen/order_status_screen/order_success_screen.dart';
import 'package:himalayan_delights/screen/order_status_screen/order_unsuccess_screen.dart';
import 'package:himalayan_delights/screen/root_screen/root_screen.dart';
import 'package:himalayan_delights/screen/track_order/track_order_screen.dart';
import 'package:himalayan_delights/utils/shared_pref_helper.dart';
import 'bloc/navbar_bloc/navbar_bloc.dart';
import 'bloc/theme_bloc/theme_bloc.dart';
import 'repositories/auth_repository.dart';
import 'screen/cancel_order_screen/cancel_order_screen.dart';
import 'screen/category_screen/category_screen.dart';
import 'screen/detail_screen/detail_screen.dart';
import 'screen/notification_screen/notification_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'utils/secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefs().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthRepo _authRepo = AuthRepo();
    final ApiFavRepository _favRepository = ApiFavRepository(favFoodApiKey);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => _authRepo,
        ),
        RepositoryProvider(
          create: (context) => _favRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider(
            create: (context) => NavbarBloc(),
          ),
          BlocProvider(create: (context) => AuthBloc(_authRepo)),
          BlocProvider(create: (context) => FavBloc(_favRepository)),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
                routerConfig: _router, theme: state.themeData);
          },
        ),
      ),
    );
  }

  final GoRouter _router = GoRouter(
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
                  Map<String, dynamic> args =
                      state.extra as Map<String, dynamic>;
                  return DetailScreen(
                      title: args['title'] as String,
                      price: args['price'] as String,
                      image: args['image'] as String);
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
}
