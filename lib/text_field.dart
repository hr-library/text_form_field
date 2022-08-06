library text_field;

import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_field/src/borders.dart';

class HrCustomTextFormField extends StatelessWidget {
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
  final InputBorder focusedBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? textFormFieldMargin;
  final Function()? suffixPress;
  final String? errorText;
  final TextStyle? errorStyle;

  HrCustomTextFormField({
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
    this.height,
    this.controller,
    this.suffixPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            hasTitleIcon ? titleIcon! : Container(),
            hasTitle ? Text(title!, style: titleStyle) : Container(),
          ],
        ),
//        hasTitle ? SpaceH4() : Container(),
        Container(
          width: width,
          height: height,
          margin: textFormFieldMargin,
          child: TextFormField(
            style: textStyle,
            controller: controller,
            keyboardType: textInputType,
            onChanged: onChanged,
            validator: validator,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              errorText: errorText,
              errorStyle: errorStyle,
              contentPadding: contentPadding,
              labelText: labelText,
              labelStyle: labelStyle,
              border: border,
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
            obscureText: obscured,
          ),
        ),
      ],
    );
  }
}

class HrCustomAutocompleteTextFormField extends StatelessWidget {
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
  final TextInputType textInputType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? textFormFieldMargin;
  final Function()? suffixPress;
  final String? errorText;
  final TextStyle? errorStyle;
  final List<String> suggestions;

  HrCustomAutocompleteTextFormField({
    required this.suggestions,
    required this.textInputType,
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
    this.focusedBorder = HRBorders.focusedBorder,
    this.enabledBorder = HRBorders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.obscured = false,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height,
    this.controller,
    this.suffixPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            hasTitleIcon ? titleIcon! : Container(),
            hasTitle ? Text(title!, style: titleStyle) : Container(),
          ],
        ),
//        hasTitle ? SpaceH4() : Container(),
        Container(
          width: width,
          height: height,
          margin: textFormFieldMargin,
          child: SimpleAutoCompleteTextField(
            keyboardType: textInputType,
            controller: controller,
            decoration: InputDecoration(
              errorText: errorText,
              errorStyle: errorStyle,
              contentPadding: contentPadding,
              labelText: labelText,
              labelStyle: labelStyle,
              border: border,
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
            style: textStyle,
            suggestions: suggestions,
            key: GlobalKey(),
          ),
        ),
      ],
    );
  }
}

class HrCustomDropdownFormField extends StatelessWidget {
  final String text;
  final List<String> list;
  final Function(String?)? onChanged;
  final TextStyle? textStyle;
  final TextStyle? textStyleDropdown;
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
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? textFormFieldMargin;
  final Function()? suffixPress;
  final String? errorText;
  final TextStyle? errorStyle;

  HrCustomDropdownFormField({
    required this.text,
    required this.list,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.textStyle,
    this.textStyleDropdown,
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
    this.focusedBorder = HRBorders.focusedBorder,
    this.enabledBorder = HRBorders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height = 60,
    this.controller,
    this.suffixPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            hasTitleIcon ? titleIcon! : Container(),
            hasTitle ? Text(title!, style: titleStyle) : Container(),
          ],
        ),
//        hasTitle ? SpaceH4() : Container(),
        Container(
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
            child: DropdownButton<String>(
              autofocus: false,
              iconSize: 0,
              underline: Container(),
              value: text,
              style: textStyle,
              items: list.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: textStyleDropdown),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}

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
  final InputBorder focusedBorder;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry? textFormFieldMargin;
  final Function()? suffixPress;
  final String? errorText;
  final TextStyle? errorStyle;

  HrCustomButtonFormField({
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
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
