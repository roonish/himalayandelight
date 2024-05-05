import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'bloc/navbar_bloc/navbar_bloc.dart';
import 'bloc/theme_bloc/theme_bloc.dart';
import 'screen/category_screen/category_screen.dart';
import 'screen/detail_screen/detail_screen.dart';
import 'screen/home_screen/home_screen.dart';
import 'screen/root_screen/root_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => NavbarBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
              routerConfig: _router, theme: state.themeData);
        },
      ),
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
          path: "/",
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
    ],
  );
}
