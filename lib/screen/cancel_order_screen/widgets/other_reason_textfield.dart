import 'package:himalayan_delights/screen/cancel_order_screen/imports.dart';

class OtherReasonTextfield extends StatelessWidget {
  const OtherReasonTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsetsGeometry textfieldPadding =
        EdgeInsets.symmetric(vertical: 20);
    const EdgeInsetsGeometry contentPadding = EdgeInsets.all(20);

    return Padding(
      padding: textfieldPadding,
      child: AppTextField(
          maxLines: 4,
          hintText: 'Describe here',
          hintStyle: TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.bold),
          contentPadding: contentPadding,
          onChanged: (_) {},
          textEditingController: TextEditingController()),
    );
  }
}
