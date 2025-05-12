import 'package:himalayan_delights/screen/authentication_screen/imports.dart';

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
    const titlePadding = EdgeInsets.only(top: 20, left: 20);
    const contentPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 20);
    const actionsPadding = EdgeInsets.only(bottom: 20, right: 20);

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
        const SizedBox(width: 5),
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
    final Size mediaQ = MediaQuery.of(context).size;
    const buttonPadding = EdgeInsets.symmetric(horizontal: 15, vertical: 7);

    return InkWell(
      onTap: () {
        Navigator.pop(context, false);
      },
      child: Container(
        width: getDeviceExactWidth(90, mediaQ),
        padding: buttonPadding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor, width: 2),
            color: buttonBgColor ?? Colors.transparent),
        child: Center(
          child: LabelText(
            text: buttonText,
            size: 15,
          ),
        ),
      ),
    );
  }
}
