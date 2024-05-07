import 'package:course_project/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  const AppTextStyles();

  static TextStyle h1(BuildContext context) => TextStyle(
        fontSize: 28,
        decoration: TextDecoration.none,
        color: context.colors.onSurface,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 36 / 28,
        letterSpacing: -0.5,
      );

  static TextStyle h1M(BuildContext context) => TextStyle(
        fontSize: 28,
        decoration: TextDecoration.none,
        color: context.colors.onSurface,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 36 / 28,
        letterSpacing: -1.5,
      );

  static TextStyle h2(BuildContext context) => TextStyle(
        fontSize: 22,
        decoration: TextDecoration.none,
        color: context.colors.onSurface,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 28 / 22,
        // letterSpacing: -0.75,
      );

  static TextStyle h2M(BuildContext context) => TextStyle(
        fontSize: 22,
        decoration: TextDecoration.none,
        color: context.colors.onSurface,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 28 / 22,
        letterSpacing: -0.75,
      );

  static TextStyle h3(BuildContext context) => TextStyle(
        fontSize: 18,
        decoration: TextDecoration.none,
        color: context.colors.onSurface,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 22 / 18,
        // letterSpacing: -0.5,
      );

  static TextStyle h3M(BuildContext context) => TextStyle(
        fontSize: 18,
        decoration: TextDecoration.none,
        color: context.colors.onSurface,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 22 / 18,
        letterSpacing: -0.5,
      );

  static TextStyle body1(BuildContext context) => TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        // height: 24 / 16,
        // letterSpacing: 0,
      );

  static TextStyle body1Link(BuildContext context) => TextStyle(
        fontSize: 16,
        // decoration: TextDecoration.underline,
        decoration: TextDecoration.none,
        color: context.colors.primary,
        decorationColor: context.colors.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        letterSpacing: 0,
      );

  static TextStyle body1M(BuildContext context) => TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 24 / 16,
        letterSpacing: 0,
      );

  static TextStyle body1B(BuildContext context) => TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
        // letterSpacing: 0,
      );

  static TextStyle body2(BuildContext context) => TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        // letterSpacing: 0.25,
      );

  static TextStyle body2Link(BuildContext context) => TextStyle(
        fontSize: 14,
        // decoration: TextDecoration.underline,
        decoration: TextDecoration.none,
        color: context.colors.primary,
        decorationColor: context.colors.primary,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        // letterSpacing: 0.25,
      );

  static TextStyle body2M(BuildContext context) => TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        letterSpacing: 0.25,
      );

  static TextStyle body2B(BuildContext context) => TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.25,
      );

  static TextStyle caption(BuildContext context) => TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 16 / 12,
        letterSpacing: 0.25,
      );

  static TextStyle captionM(BuildContext context) => TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
        letterSpacing: 0.25,
      );

  static TextStyle captionB(BuildContext context) => TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: 16 / 12,
        letterSpacing: 0.25,
      );

  static TextStyle overline(BuildContext context) => TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        color: context.colors.onSurfaceVariant,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: 16 / 12,
        // letterSpacing: 2,
      );

  static TextStyle get buttonL => const TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
        // letterSpacing: -0.5,
      );

  static TextStyle get button => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 20 / 14,
        letterSpacing: 0.1,
      );

  static TextStyle get buttonS => const TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        //height: 16,
        letterSpacing: 0.1,
      );
}
