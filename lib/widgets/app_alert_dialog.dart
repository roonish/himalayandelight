import 'package:flutter/material.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import 'package:himalayan_delights/widgets/app_button.dart';
import 'package:himalayan_delights/widgets/label_text.dart';

class AppAlertDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  final String content;
  final String title;

  const AppAlertDialog(
      {super.key,
      required this.onConfirm,
      required this.content,
      required this.title});

  @override
  Widget build(BuildContext context) {
    const titlePadding = EdgeInsets.only(top: 28);
    const contentPadding = EdgeInsets.symmetric(horizontal: 26, vertical: 19);
    const actionsPadding = EdgeInsets.only(bottom: 28);

    return AlertDialog(
      backgroundColor: AppColor.darkBackgroundColor,
      surfaceTintColor: AppColor.searchColor,
      title: LabelText(
        text: title,
        size: 20,
        color: AppColor.primaryColor,
        textAlign: TextAlign.center,
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      titlePadding: titlePadding,
      contentPadding: contentPadding,
      actionsPadding: actionsPadding,
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      content: LabelText(
        text: content,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.w400,
        maxLine: 3,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        AppButton(
          width: 76,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          ontap: () {
            Navigator.pop(context, false);
          },
          text: "Cancel",
          textColor: AppColor.textColor,
          color: AppColor.primaryColor,
        ),
        AppButton(
          width: 76,
          ontap: onConfirm,
          text: "Yes",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColor.buttonColor,
        ),
      ],
    );
  }
}
