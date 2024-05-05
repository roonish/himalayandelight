import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final int? maxLine;
  const LabelText({
    super.key,
    required this.text,
    this.size,
    this.fontWeight,
    this.fontFamily,
    this.textDecoration,
    this.color,
    this.textAlign,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine ?? 1,
      textAlign: textAlign ?? TextAlign.left,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: color,
          fontFamily: fontFamily ?? 'ProximaNova',
          fontSize: size ?? 20,
          fontWeight: fontWeight ?? FontWeight.w700,
          decoration: textDecoration),
    );
  }
}
