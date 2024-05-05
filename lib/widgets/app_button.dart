import 'package:flutter/material.dart';
import 'package:himalayan_delights/themes/color_theme.dart';
import 'package:himalayan_delights/widgets/label_text.dart';

class AppButton extends StatelessWidget {
  final Color? color;
  final double? radius;
  final String? text;
  final double? fontSize;
  final double? width;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? textColor;
  // if button has icon, display icon  instead of text
  final bool hasIcon;
  final bool hasText;
  final String? imagePath;
  final FontWeight? fontWeight;
  final Color? iconColor;
  final List<BoxShadow>? boxShadow;
  final void Function()? ontap;
  final Color? borderColor;
  final double? imageHeight;
  final double? imageWidth;

  const AppButton({
    super.key,
    this.color,
    this.text,
    this.ontap,
    this.radius,
    this.fontSize,
    this.width,
    this.verticalPadding,
    this.hasIcon = false,
    this.hasText = true,
    this.imagePath,
    this.horizontalPadding,
    this.fontWeight,
    this.textColor,
    this.iconColor,
    this.boxShadow,
    this.borderColor,
    this.imageHeight,
    this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    const double imageSize = 15;
    final BorderRadius borderRadius = BorderRadius.circular(radius ?? 18);

    return Material(
      color: color ?? AppColor.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: BorderSide(color: borderColor ?? Colors.transparent, width: 1),
      ),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: ontap,
        child: Container(
          width: width ?? MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 9,
            horizontal: horizontalPadding ?? 9,
          ),
          decoration:
              BoxDecoration(color: Colors.transparent, boxShadow: boxShadow),
          child: Row(
            mainAxisAlignment: hasIcon && hasText
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.center,
            children: [
              hasIcon
                  ? Center(
                      child: Image(
                        height: imageSize,
                        width: imageSize,
                        image: AssetImage(
                          imagePath ?? '',
                        ),
                        color: iconColor ?? AppColor.primaryColor,
                      ),
                    )
                  : const SizedBox(),
              hasText
                  ? LabelText(
                      text: text ?? '',
                      color: textColor ?? AppColor.headerColor,
                      size: fontSize ?? 16,
                      fontWeight: fontWeight ?? FontWeight.w700,
                      textAlign: TextAlign.center,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
