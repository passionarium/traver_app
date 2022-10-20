import 'package:flutter/material.dart';

class TraverTypography {
  static const _masterStyle = TextStyle(
    fontFamily: 'Urbanist',
  );

// ----------------
// Headline
// ----------------

// Headline900, bold, 56
  static TextStyle headLine900Bold({final Color? color}) => _masterStyle.copyWith(
        fontSize: 56,
        fontWeight: FontWeight.bold,
        color: color,
      );
// Headline900Semibold, w900, 48
  static TextStyle headLine900Semibold({final Color? color}) => _masterStyle.copyWith(
        fontSize: 48,
        fontWeight: FontWeight.w900,
        color: color,
      );
// Headline800, semibold, 36
  static TextStyle headLine800Semibold({final Color? color}) => _masterStyle.copyWith(
        fontSize: 36,
        fontWeight: FontWeight.w800,
        color: color,
      );
// Headline800, normal, 32
  static TextStyle headLine800({final Color? color}) => _masterStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline700, semibold, 24
  static TextStyle headLine700Semibold({final Color? color}) => _masterStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: color,
      );
// Headline700, normal, 20
  static TextStyle headLine700({final Color? color}) => _masterStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline600, semibold, 20
  static TextStyle headLine600SemiBold({final Color? color}) => _masterStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: color,
      );
// Headline600, w600, 24
  static TextStyle headLine600({final Color? color}) => _masterStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline500, semibold, 16
  static TextStyle headLine500SemiBold({final Color? color}) => _masterStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color,
      );
// Headline500, normal, 18
  static TextStyle headLine500({final Color? color}) => _masterStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline400, medium, 14
  static TextStyle headLine400Medium({final Color? color}) => _masterStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color,
      );
// Headline400, normal, 16
  static TextStyle headLine400({final Color? color}) => _masterStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline300, medium, 12
  static TextStyle headLine300Medium({final Color? color}) => _masterStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: color,
      );
// Headline300, normal, 16
  static TextStyle headLine300({final Color? color}) => _masterStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline200, semibold, 12
  static TextStyle headLine200SemiBold({final Color? color}) => _masterStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w200,
        color: color,
      );
// Headline200, normal, 16
  static TextStyle headLine200({final Color? color}) => _masterStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      );
// Headline100, medium, 16
  static TextStyle headLine100Medium({final Color? color}) => _masterStyle.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w100,
        color: color,
      );
// Headline100, normal, 16
  static TextStyle headLine100({final Color? color}) => _masterStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: color,
      );
// BodyText300, w300, 16
  static TextStyle BodyText300Regular({final Color? color}) => _masterStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: color,
      );
// BodyText300, normal, 24
  static TextStyle BodyText300({final Color? color}) => _masterStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: color,
      );
// BodyText200, w200, 14
  static TextStyle BodyText200Regular({final Color? color}) => _masterStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w200,
        color: color,
      );
// BodyText200, normal, 24
  static TextStyle BodyText200({final Color? color}) => _masterStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: color,
      );
// BodyText100, w100, 16
  static TextStyle BodyText100Regular({final Color? color}) => _masterStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w100,
        color: color,
      );
// BodyText100, normal, 24
  static TextStyle BodyText100({final Color? color}) => _masterStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.normal,
        color: color,
      );
}
