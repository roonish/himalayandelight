import 'package:himalayan_delights/screen/cart_screen/imports.dart';

class AppTextField extends StatefulWidget {
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final String? hintText;
  final String? errorText;
  final ValueChanged<String> onChanged;
  final void Function()? onTap;
  final TextEditingController textEditingController;
  final bool counterRequired;
  final String? counterText;
  final Widget? trailing;
  final Widget? prefixIcon;
  final bool enabled;
  final Color? borderColor;
  final Color? fillColor;
  final TextStyle? style;
  final int? maxLength;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? errorStyle;
  final String? Function(String?)? validator;
  final bool? autoFocus;
  final FocusNode? focusNode;

  const AppTextField({
    super.key,
    this.keyboardType,
    this.maxLines,
    this.textCapitalization = TextCapitalization.none,
    this.hintText,
    this.counterRequired = false,
    this.counterText,
    required this.onChanged,
    this.onTap,
    this.errorText,
    required this.textEditingController,
    this.enabled = true,
    this.trailing,
    this.borderColor,
    this.fillColor,
    this.style,
    this.maxLength,
    this.contentPadding,
    this.focusedBorder,
    this.errorBorder,
    this.enabledBorder,
    this.hintStyle,
    this.fontSize,
    this.fontWeight,
    this.errorStyle,
    this.validator,
    this.prefixIcon,
    this.autoFocus,
    this.focusNode,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodyMedium;
    final theme = Theme.of(context);
    return FocusScope(
      onFocusChange: (_) {
        setState(() {
          hasFocus = _;
        });
      },
      child:
          //  Container(
          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //         color: hasFocus
          //             ? AppColor.primaryColor.withOpacity(0.2)
          //             : Colors.transparent,
          //         offset: const Offset(0, 10),
          //         spreadRadius: 7,
          //         blurRadius: 15)
          //   ],
          // ),
          // child:
          TextFormField(
        onChanged: (s) => widget.onChanged(s),
        onTap: widget.onTap,
        controller: widget.textEditingController,
        autocorrect: false,
        maxLength: widget.counterRequired ? widget.maxLength : null,
        cursorColor: theme.textSelectionTheme.cursorColor,
        style: widget.style ??
            Theme.of(context).textTheme.bodyMedium!.copyWith(
                decorationColor: !widget.enabled ? Colors.red : null,
                decorationStyle:
                    !widget.enabled ? TextDecorationStyle.solid : null,
                fontSize: widget.fontSize ?? 18,
                fontWeight: widget.fontWeight ?? FontWeight.w400,
                decoration: !widget.enabled
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
        decoration: InputDecoration(
          suffixIcon:
              // hasFocus ?
              widget.trailing,
          //: null,
          prefixIcon: widget.prefixIcon,
          contentPadding: widget.contentPadding ??
              theme.inputDecorationTheme.contentPadding,
          fillColor: widget.enabled
              ? (widget.fillColor == null)
                  ? theme.inputDecorationTheme.fillColor
                  : widget.fillColor
              : AppColor.textColor,
          filled: true,
          enabled: widget.enabled,
          counterText:
              widget.counterRequired || !hasFocus ? widget.counterText : null,
          enabledBorder:
              widget.enabledBorder ?? theme.inputDecorationTheme.enabledBorder,
          focusedBorder:
              widget.focusedBorder ?? theme.inputDecorationTheme.focusedBorder,
          errorBorder:
              widget.errorBorder ?? theme.inputDecorationTheme.errorBorder,
          focusedErrorBorder: theme.inputDecorationTheme.focusedErrorBorder,
          disabledBorder: theme.inputDecorationTheme.disabledBorder,
          hintStyle: widget.hintStyle ?? theme.inputDecorationTheme.hintStyle,
          errorStyle:
              widget.errorStyle ?? theme.inputDecorationTheme.errorStyle,
          errorMaxLines: 2,
          errorText: widget.errorText,
          hintText: widget.hintText,
          labelStyle: textStyle!.copyWith(fontSize: 12.0),
          // focusColor: AppColor.transparentColor,
          border: InputBorder.none,
          isDense: true,
        ),
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines ?? 1,
        textCapitalization: widget.textCapitalization,
        validator: widget.validator,
        autofocus: widget.autoFocus ?? false,
      ),
      //  ),
    );
  }
}
