import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'bloc/theme_bloc.dart';
import 'screen/category_screen/category_screen.dart';
import 'screen/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
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
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: "/category",
        builder: (context, state) => const CategoryScreen(),
      )
    ],
  );
}
