part of 'text_field.dart';

class HrCustomButtonFormField extends StatelessWidget {
  final String text;
  final GestureTapCallback? press;
  final TextStyle? textStyle;
  final TextEditingController? controller;
  final TextStyle? hintTextStyle;
  final TextStyle? labelStyle;
  final TextStyle? titleStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? labelText;
  final String? title;
  final bool obscured;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final bool hasTitle;
  final bool hasTitleIcon;
  final Widget? titleIcon;
  final TextInputType? textInputType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder errorBorder;
  final InputBorder focusedBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? textFormFieldMargin;
  final Function()? suffixPress;
  final String? errorText;
  final TextStyle? errorStyle;

  const HrCustomButtonFormField({
    required this.text,
    required this.press,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.labelStyle,
    this.titleStyle,
    this.errorStyle,
    this.titleIcon,
    this.hasTitleIcon = false,
    this.title,
    this.errorText,
    this.contentPadding,
    this.textFormFieldMargin,
    this.hasTitle = false,
    this.border = HRBorders.primaryInputBorder,
    this.errorBorder = HRBorders.errorBorder,
    this.focusedBorder = HRBorders.focusedBorder,
    this.enabledBorder = HRBorders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height = 55,
    this.controller,
    this.suffixPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              hasTitleIcon ? titleIcon! : Container(),
              hasTitle ? Text(title!, style: titleStyle) : Container(),
            ],
          ),
//        hasTitle ? SpaceH4() : Container(),
          InkWell(
            onTap: press,
            child: Container(
              width: width,
              height: height,
              margin: textFormFieldMargin,
              child: InputDecorator(
                decoration: InputDecoration(
                  errorText: errorText,
                  errorStyle: errorStyle,
                  contentPadding: contentPadding,
                  labelText: labelText,
                  labelStyle: labelStyle,
                  border: border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: errorBorder,
                  enabledBorder: enabledBorder,
                  focusedBorder: focusedBorder,
                  prefixIcon: hasPrefixIcon ? prefixIcon : null,
                  hintText: hintText,
                  suffix: hasSuffixIcon
                      ? InkWell(
                          onTap: suffixPress,
                          child: obscured
                              ? const Icon(
                                  Icons.visibility,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                ),
                        )
                      : null,
                  hintStyle: hintTextStyle,
                ),
                child: Text(
                  text,
                  textAlign: TextAlign.start,
                  style: textStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
