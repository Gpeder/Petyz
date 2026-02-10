import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle _base(BuildContext context, double size,
      {FontWeight weight = FontWeight.w400}) {
    return TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: Theme.of(context).colorScheme.onSurface,
      height: 1.3,
    );
  }

  // 14
  static TextStyle text14(BuildContext context) => _base(context, 14);
  static TextStyle text14Bold(BuildContext context) =>
      _base(context, 14, weight: FontWeight.w600);

  // 16
  static TextStyle text16(BuildContext context) => _base(context, 16);
  static TextStyle text16Bold(BuildContext context) =>
      _base(context, 16, weight: FontWeight.w600);

  // 18
  static TextStyle text18(BuildContext context) => _base(context, 18);
  static TextStyle text18Bold(BuildContext context) =>
      _base(context, 18, weight: FontWeight.w600);

  // 20
  static TextStyle text20(BuildContext context) => _base(context, 20);
  static TextStyle text20Bold(BuildContext context) =>
      _base(context, 20, weight: FontWeight.w600);

  // 22
  static TextStyle text22(BuildContext context) => _base(context, 22);
  static TextStyle text22Bold(BuildContext context) =>
      _base(context, 22, weight: FontWeight.w600);

  // 24
  static TextStyle text24(BuildContext context) => _base(context, 24);
  static TextStyle text24Bold(BuildContext context) =>
      _base(context, 24, weight: FontWeight.w600);
}
