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
    const titlePadding = EdgeInsets.only(top: 28, left: 26);
    const contentPadding = EdgeInsets.symmetric(horizontal: 26, vertical: 19);
    const actionsPadding = EdgeInsets.only(bottom: 28);

    return AlertDialog(
      backgroundColor: AppColor.darkBackgroundColor,
      title: LabelText(
        text: title,
        size: 20,
        color: AppColor.primaryColor,
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      titlePadding: titlePadding,
      contentPadding: contentPadding,
      actionsPadding: actionsPadding,
      actionsAlignment: MainAxisAlignment.end,
      content: LabelText(
        text: content,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.w400,
        maxLine: 3,
      ),
      actions: <Widget>[
        const DialogButton(
          buttonText: 'Cancel',
          borderColor: AppColor.headerColor,
        ),
        DialogButton(
          buttonText: 'Ok',
          borderColor: AppColor.primaryColor,
          buttonBgColor: AppColor.primaryColor,
        ),
      ],
    );
  }
}

class DialogButton extends StatelessWidget {
  final Color borderColor;
  final String buttonText;
  final Color? buttonBgColor;
  const DialogButton({
    super.key,
    required this.borderColor,
    required this.buttonText,
    this.buttonBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context, false);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor, width: 2),
            color: buttonBgColor ?? Colors.transparent),
        child: LabelText(
          text: buttonText,
          size: 15,
        ),
      ),
    );
  }
}
