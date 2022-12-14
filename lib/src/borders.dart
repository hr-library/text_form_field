part of '../text_field.dart';

class HRBorders {
  static const OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
    borderSide: BorderSide(
      width: 1.0,
      style: BorderStyle.solid,
    ),
  );

  static const OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
    borderSide: BorderSide(
      width: 1.8,
      style: BorderStyle.solid,
    ),
  );

  static const OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
    borderSide: BorderSide(
      width: 1.0,
      style: BorderStyle.solid,
      color: Colors.red,
    ),
  );

  static const UnderlineInputBorder primaryInputBorder = UnderlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
    borderSide: BorderSide(
      width: 1.5,
      style: BorderStyle.solid,
    ),
  );
}
