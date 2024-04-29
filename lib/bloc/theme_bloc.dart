import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:himalayan_delights/utils/enums.dart';

import '../themes/app_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
            // initial state
            ThemeState(
                themeData: AppThemes.appThemeData[AppTheme.lightTheme]!)) {
    on<ThemeEvent>((event, emit) {
      emit(ThemeState(themeData: AppThemes.appThemeData[event.appTheme]!));
    });
  }
}
