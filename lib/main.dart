import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import 'package:himalayan_delights/utils/enums.dart';

import 'bloc/theme_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
              theme: state.themeData,
              home: Scaffold(
                appBar: AppBar(title: const Text('Hi')),
                body: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('hi'),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
