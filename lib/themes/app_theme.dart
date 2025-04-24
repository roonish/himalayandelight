import 'package:flutter/material.dart';
import 'package:himalayan_delights/utils/constants.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import '../utils/enums.dart';

class AppThemes {
  static final Map<AppTheme, ThemeData> appThemeData = {
    // Light Theme
    // AppTheme.lightTheme: ThemeData(
    //     scaffoldBackgroundColor: AppColor.backgroundColor,
    //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //       backgroundColor: AppColor.whiteColor,
    //       elevation: 5,
    //       selectedIconTheme: const IconThemeData(color: AppColor.whiteColor),
    //       unselectedIconTheme: const IconThemeData(color: AppColor.blackColor),
    //       unselectedItemColor: AppColor.blackColor,
    //       selectedItemColor: AppColor.blackColor,
    //       selectedLabelStyle:
    //           kStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
    //       unselectedLabelStyle:
    //           kStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
    //     ),
    //     appBarTheme: const AppBarTheme(
    //       backgroundColor: Colors.red,
    //       elevation: 0,
    //       centerTitle: false,
    //       titleTextStyle: TextStyle(
    //         color: AppColor.blackColor,
    //         fontSize: 20,
    //         fontWeight: FontWeight.w500,
    //       ),
    //       iconTheme: IconThemeData(color: AppColor.lightBlack),
    //     ),
    //     colorScheme: ColorScheme.fromSwatch().copyWith(
    //       primary: AppColor.whiteColor,
    //       secondary: AppColor.greywhiteColor,
    //       tertiary: AppColor.lightRed,
    //     ),
    //     textTheme: const TextTheme(
    //       bodyMedium: kStyle,
    //     ),
    //     iconTheme: const IconThemeData(
    //       color: AppColor.blackColor,
    //     ),
    //     textSelectionTheme: const TextSelectionThemeData(
    //       cursorColor: AppColor.blackColor,
    //     ),
    //     inputDecorationTheme: InputDecorationTheme(
    //       contentPadding:
    //           const EdgeInsets.symmetric(vertical: 13, horizontal: 8),
    //       filled: true,
    //       fillColor: AppColor.whiteColor,
    //       isDense: true,
    //       focusColor: AppColor.transparentColor,
    //       errorMaxLines: 2,
    //       labelStyle: kStyle.copyWith(
    //         fontSize: 18,
    //         color: AppColor.greyColor,
    //       ),
    //       hintStyle: kStyle.copyWith(
    //         fontSize: 16,
    //         fontWeight: FontWeight.w400,
    //         color: AppColor.greyColor,
    //       ),
    //       errorStyle: kStyle.copyWith(
    //         fontSize: 16,
    //         color: AppColor.lightRed,
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(width: 1, color: AppColor.focusColor),
    //         borderRadius: kBorderRadius,
    //       ),
    //       enabledBorder: OutlineInputBorder(
    //         borderSide:
    //             const BorderSide(width: 0.25, color: AppColor.blackColor),
    //         borderRadius: kBorderRadius,
    //       ),
    //       focusedErrorBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(color: AppColor.lightRed, width: 0.0),
    //         borderRadius: kBorderRadius,
    //       ),
    //       disabledBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(color: AppColor.greyColor, width: 0.0),
    //         borderRadius: kBorderRadius,
    //       ),
    //       errorBorder: OutlineInputBorder(
    //         borderSide: const BorderSide(color: AppColor.lightRed, width: 0.0),
    //         borderRadius: kBorderRadius,
    //       ),
    //     )
    //   ),

    // Dark Theme
    AppTheme.darkTheme: ThemeData(
        scaffoldBackgroundColor: AppColor.darkBackgroundColor,
        unselectedWidgetColor: AppColor.headerColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.darkBackgroundColor,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            color: AppColor.textColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: IconThemeData(color: AppColor.textColor, size: 25),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: AppColor.primaryColor,
            secondary: AppColor.headerColor,
            tertiary: AppColor.textColor),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColor.textColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'ProximaNova',
          ),
        ),
        iconTheme: const IconThemeData(
          color: AppColor.textColor,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColor.textColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          filled: true,
          fillColor: AppColor.searchColor,
          isDense: true,
          focusColor: AppColor.searchColor,
          errorMaxLines: 1,
          labelStyle: kStyle.copyWith(
            fontSize: 18,
            color: AppColor.textColor,
          ),
          border: InputBorder.none,
          suffixIconColor: AppColor.textColor,
          prefixIconColor: AppColor.textColor,
          hintStyle: kStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColor.textColor,
          ),
          errorStyle: kStyle.copyWith(
            fontSize: 16,
            color: AppColor.searchColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppColor.searchColor),
            borderRadius: kBorderRadius,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 0.25, color: AppColor.searchColor),
            borderRadius: kBorderRadius,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColor.searchColor, width: 0.0),
            borderRadius: kBorderRadius,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColor.searchColor, width: 0.0),
            borderRadius: kBorderRadius,
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: AppColor.searchColor, width: 0.0),
            borderRadius: kBorderRadius,
          ),
        )),
  };
}
