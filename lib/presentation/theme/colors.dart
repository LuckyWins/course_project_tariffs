import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      canvasColor: const Color(0xfff8f8fa),
      colorScheme: const ColorScheme.light(
        primary: AppPalette.primary_40,
        onPrimary: AppPalette.primary_100,
        primaryContainer: AppPalette.primary_90,
        onPrimaryContainer: AppPalette.primary_10,
        secondary: AppPalette.secondary_40,
        onSecondary: AppPalette.secondary_100,
        secondaryContainer: AppPalette.secondary_90,
        onSecondaryContainer: AppPalette.secondary_10,
        tertiary: AppPalette.tertiary_40,
        onTertiary: AppPalette.tertiary_100,
        tertiaryContainer: AppPalette.tertiary_90,
        onTertiaryContainer: AppPalette.tertiary_10,
        error: AppPalette.error_40,
        onError: AppPalette.error_100,
        errorContainer: AppPalette.error_90,
        onErrorContainer: AppPalette.error_10,
        background: AppPalette.neutral_99,
        onBackground: AppPalette.neutral_10,
        surface: AppPalette.neutral_100,
        onSurface: AppPalette.neutral_10,
        surfaceVariant: AppPalette.neutralVariant_90,
        onSurfaceVariant: AppPalette.neutralVariant_30,
        outline: AppPalette.neutralVariant_50,
        outlineVariant: AppPalette.neutralVariant_80,
        // shadow: AppColorsV3.shadow,
        // scrim: AppColorsV3.scrim,
        inverseSurface: AppPalette.neutral_20,
        onInverseSurface: AppPalette.neutral_95,
        inversePrimary: AppPalette.primary_80,
        // surfaceTint: AppColorsV3.syslightsurfacetint,
      ),
      extensions: const [
        MaterialCustomColors(
          success: AppPalette.success_40,
          onSuccess: AppPalette.success_100,
          successContainer: AppPalette.success_90,
          onSuccessContainer: AppPalette.success_10,
          outlineVariantTint: Color.fromRGBO(191, 198, 220, .4),
          surface1: Color(0xffF1F4FF),
          surface2: Color(0xffEAF0FF),
          surface3: Color(0xffE2ECFF),
          surface4: Color(0xffDFEBFF),
        )
      ],
      // fontFamily: Platform.isIOS ? '.SF Pro Text' : 'Roboto',
      inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
            labelStyle: MaterialStateTextStyle.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return TextStyle(
                    color: AppPalette.neutralVariant_30.withOpacity(.38),
                  );
                }
                return TextStyle(
                  color: AppPalette.neutralVariant_30.withOpacity(.6),
                );
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            isDense: false,
          ),
      scaffoldBackgroundColor: AppPalette.neutral_99,
      brightness: Brightness.light,
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            titleTextStyle: const TextStyle(
              fontSize: 18,
              decoration: TextDecoration.none,
              color: AppPalette.neutral_10,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              height: 22 / 18,
              // letterSpacing: -0.5,
            ),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0,
          ),
      snackBarTheme: const SnackBarThemeData(
        actionTextColor: AppPalette.primary_40,
        backgroundColor: AppPalette.neutral_20,
        contentTextStyle: TextStyle(
          fontSize: 14,
          decoration: TextDecoration.none,
          color: AppPalette.neutral_95,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 22 / 18,
        ),
      ),
      textTheme: Theme.of(context).textTheme.apply(
            displayColor: AppPalette.neutral_10,
            bodyColor: AppPalette.neutral_10,
          ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

ThemeData darkTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      canvasColor: const Color(0xff13151D),
      colorScheme: const ColorScheme.dark(
        primary: AppPalette.primary_40,
        onPrimary: AppPalette.primary_100,
        primaryContainer: AppPalette.primary_10,
        onPrimaryContainer: AppPalette.primary_90,
        secondary: AppPalette.secondary_80,
        onSecondary: AppPalette.secondary_20,
        secondaryContainer: AppPalette.secondary_10,
        onSecondaryContainer: AppPalette.secondary_90,
        tertiary: AppPalette.tertiary_80,
        onTertiary: AppPalette.tertiary_20,
        tertiaryContainer: AppPalette.tertiary_30,
        onTertiaryContainer: AppPalette.tertiary_90,
        error: AppPalette.error_40,
        onError: AppPalette.error_100,
        errorContainer: AppPalette.error_10,
        onErrorContainer: AppPalette.error_90,
        background: Color(0xff13151D),
        onBackground: AppPalette.neutral_90,
        surface: AppPalette.neutral_10,
        onSurface: AppPalette.neutral_90,
        surfaceVariant: AppPalette.neutralVariant_30,
        onSurfaceVariant: AppPalette.neutralVariant_80,
        outline: AppPalette.neutralVariant_60,
        outlineVariant: AppPalette.neutralVariant_30,
        // shadow: AppColorsV3.shadow,
        // scrim: AppColorsV3.scrim,
        inverseSurface: AppPalette.neutral_95,
        onInverseSurface: AppPalette.neutral_10,
        inversePrimary: Color(0xffFFFFFF),
        // surfaceTint: AppColorsV3.syslightsurfacetint,
      ),
      extensions: const [
        MaterialCustomColors(
          success: AppPalette.success_80,
          onSuccess: AppPalette.success_20,
          successContainer: AppPalette.success_30,
          onSuccessContainer: AppPalette.success_90,
          outlineVariantTint: Color.fromRGBO(63, 71, 89, .4),
          surface1: Color(0xff18202E),
          surface2: Color(0xff172235),
          surface3: Color(0xff16253B),
          surface4: Color(0xff16263D),
        )
      ],
      // fontFamily: Platform.isIOS ? '.SF Pro Text' : 'Roboto',
      inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
            labelStyle: MaterialStateTextStyle.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return TextStyle(
                    color: AppPalette.neutralVariant_80.withOpacity(.38),
                  );
                }
                return TextStyle(
                  color: AppPalette.neutralVariant_80.withOpacity(.6),
                );
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            isDense: false,
          ),
      scaffoldBackgroundColor: const Color(0xff13151D),
      brightness: Brightness.dark,
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            titleTextStyle: const TextStyle(
              fontSize: 18,
              decoration: TextDecoration.none,
              color: AppPalette.neutral_90,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              height: 22 / 18,
              // letterSpacing: -0.5,
            ),
            systemOverlayStyle: SystemUiOverlayStyle.light,
            elevation: 0,
          ),
      snackBarTheme: const SnackBarThemeData(
        actionTextColor: AppPalette.primary_40,
        backgroundColor: AppPalette.neutral_95,
        contentTextStyle: TextStyle(
          fontSize: 14,
          decoration: TextDecoration.none,
          color: AppPalette.neutral_10,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 22 / 18,
        ),
      ),
      textTheme: Theme.of(context).textTheme.apply(
            displayColor: AppPalette.neutral_90,
            bodyColor: AppPalette.neutral_90,
          ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

// only for theme building. DO NOT USE in project
class AppPalette {
  /// primary
  static const primary_100 = Color(0xffFFFFFF);
  static const primary_99 = Color(0xffF8FBFF);
  static const primary_95 = Color(0xffE9F3FF);
  static const primary_90 = Color(0xffDAEAFF);
  static const primary_80 = Color(0xffBEDBFF);
  static const primary_70 = Color(0xff87BDFF);
  static const primary_60 = Color(0xff5DA6FD);
  static const primary_50 = Color(0xff2D8DFF);
  static const primary_40 = Color(0xff2F7DFA);
  static const primary_30 = Color(0xff194DDC);
  static const primary_20 = Color(0xff0D347A);
  static const primary_10 = Color(0xff162455);
  static const primary_0 = Color(0xff000000);

  /// secondary
  static const secondary_100 = Color(0xffFFFFFF);
  static const secondary_99 = Color(0xffFEFBFF);
  static const secondary_95 = Color(0xffEDF0FF);
  static const secondary_90 = Color(0xffDBE2F9);
  static const secondary_80 = Color(0xffBFC6DC);
  static const secondary_70 = Color(0xffA4ABBF);
  static const secondary_60 = Color(0xff8990A5);
  static const secondary_50 = Color(0xff70778B);
  static const secondary_40 = Color(0xff575E71);
  static const secondary_30 = Color(0xff3F4659);
  static const secondary_20 = Color(0xff293041);
  static const secondary_10 = Color(0xff141B2C);
  static const secondary_0 = Color(0xff000000);

  /// tertiary
  static const tertiary_100 = Color(0xffFFFFFF);
  static const tertiary_99 = Color(0xffFFFBFF);
  static const tertiary_95 = Color(0xffFFEBFD);
  static const tertiary_90 = Color(0xffFDD6FF);
  static const tertiary_80 = Color(0xffF4AEFF);
  static const tertiary_70 = Color(0xffD793E2);
  static const tertiary_60 = Color(0xffBA79C6);
  static const tertiary_50 = Color(0xff9E5FAA);
  static const tertiary_40 = Color(0xff834790);
  static const tertiary_30 = Color(0xff682E76);
  static const tertiary_20 = Color(0xff4F155D);
  static const tertiary_10 = Color(0xff340042);
  static const tertiary_0 = Color(0xff000000);

  /// error
  static const error_100 = Color(0xffFFFFFF);
  static const error_99 = Color(0xffFFFBFD);
  static const error_95 = Color(0xffFFF1F4);
  static const error_90 = Color(0xffFEE5E9);
  static const error_80 = Color(0xffFDCEDA);
  static const error_70 = Color(0xffFFB3CA);
  static const error_60 = Color(0xffF87497);
  static const error_50 = Color(0xffFC4379);
  static const error_40 = Color(0xffEF3068);
  static const error_30 = Color(0xffBB1552);
  static const error_20 = Color(0xff861546);
  static const error_10 = Color(0xff4B0622);
  static const error_0 = Color(0xff000000);

  /// success
  static const success_100 = Color(0xffFFFFFF);
  static const success_99 = Color(0xffEBFEF5);
  static const success_95 = Color(0xffCEFDE5);
  static const success_90 = Color(0xffA1F9D1);
  static const success_80 = Color(0xff74F8BC);
  static const success_70 = Color(0xff3AEFAF);
  static const success_60 = Color(0xff21DD9A);
  static const success_50 = Color(0xff03C687);
  static const success_40 = Color(0xff00A16E);
  static const success_30 = Color(0xff00815C);
  static const success_20 = Color(0xff01533F);
  static const success_10 = Color(0xff002F24);
  static const success_0 = Color(0xff000000);

  /// neutral
  static const neutral_100 = Color(0xffFFFFFF);
  static const neutral_99 = Color(0xffF8F8FA);
  static const neutral_95 = Color(0xffEEF0FA);
  static const neutral_90 = Color(0xffE1E2EC);
  static const neutral_80 = Color(0xffC5C6D0);
  static const neutral_70 = Color(0xffA9ABB4);
  static const neutral_60 = Color(0xff8E9099);
  static const neutral_50 = Color(0xff757780);
  static const neutral_40 = Color(0xff5C5E67);
  static const neutral_30 = Color(0xff44474F);
  static const neutral_20 = Color(0xff2F3038);
  static const neutral_10 = Color(0xff191A23);
  static const neutral_0 = Color(0xff000000);

  /// neutralVariant
  static const neutralVariant_100 = Color(0xffFFFFFF);
  static const neutralVariant_99 = Color(0xffFEFBFF);
  static const neutralVariant_95 = Color(0xffEDF1FF);
  static const neutralVariant_90 = Color(0xffDBE2F9);
  static const neutralVariant_80 = Color(0xffBFC6DC);
  static const neutralVariant_70 = Color(0xffA4ABC0);
  static const neutralVariant_60 = Color(0xff8990A5);
  static const neutralVariant_50 = Color(0xff70778B);
  static const neutralVariant_40 = Color(0xff575E71);
  static const neutralVariant_30 = Color(0xff3F4759);
  static const neutralVariant_20 = Color(0xff293041);
  static const neutralVariant_10 = Color(0xff141B2C);
  static const neutralVariant_0 = Color(0xff000000);
}

/// All app colors wrapper (theme + custom)

class AppColorScheme extends ColorScheme {
  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;
  final Color outlineVariantTint;
  final Color surface1;
  final Color surface2;
  final Color surface3;
  final Color surface4;

  AppColorScheme({
    required MaterialCustomColors customColors,
    required ColorScheme scheme,
  })  : success = customColors.success,
        onSuccess = customColors.onSuccess,
        successContainer = customColors.successContainer,
        onSuccessContainer = customColors.onSuccessContainer,
        outlineVariantTint = customColors.outlineVariantTint,
        surface1 = customColors.surface1,
        surface2 = customColors.surface2,
        surface3 = customColors.surface3,
        surface4 = customColors.surface4,
        super(
          brightness: scheme.brightness,
          primary: scheme.primary,
          onPrimary: scheme.onPrimary,
          primaryContainer: scheme.primaryContainer,
          onPrimaryContainer: scheme.onPrimaryContainer,
          secondary: scheme.secondary,
          onSecondary: scheme.onSecondary,
          secondaryContainer: scheme.secondaryContainer,
          onSecondaryContainer: scheme.onSecondaryContainer,
          tertiary: scheme.tertiary,
          onTertiary: scheme.onTertiary,
          tertiaryContainer: scheme.tertiaryContainer,
          onTertiaryContainer: scheme.onTertiaryContainer,
          error: scheme.error,
          onError: scheme.onError,
          errorContainer: scheme.errorContainer,
          onErrorContainer: scheme.onErrorContainer,
          background: scheme.background,
          onBackground: scheme.onBackground,
          surface: scheme.surface,
          onSurface: scheme.onSurface,
          surfaceVariant: scheme.surfaceVariant,
          onSurfaceVariant: scheme.onSurfaceVariant,
          outline: scheme.outline,
          outlineVariant: scheme.outlineVariant,
          shadow: scheme.shadow,
          scrim: scheme.scrim,
          inverseSurface: scheme.inverseSurface,
          onInverseSurface: scheme.onInverseSurface,
          inversePrimary: scheme.inversePrimary,
        );
}

extension ColorSchemeExtension on BuildContext {
  AppColorScheme get colors => AppColorScheme(
        scheme: Theme.of(this).colorScheme,
        customColors: Theme.of(this).extension<MaterialCustomColors>()!,
      );
}

class MaterialCustomColors extends ThemeExtension<MaterialCustomColors> {
  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;
  final Color outlineVariantTint;

  /// surface level 1
  final Color surface1;

  /// surface level 2
  final Color surface2;

  /// surface level 3
  final Color surface3;

  /// surface level 4
  final Color surface4;

  const MaterialCustomColors({
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.outlineVariantTint,
    required this.surface1,
    required this.surface2,
    required this.surface3,
    required this.surface4,
  });

  @override
  ThemeExtension<MaterialCustomColors> copyWith({
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? outlineVariantTint,
    Color? surface1,
    Color? surface2,
    Color? surface3,
    Color? surface4,
  }) =>
      MaterialCustomColors(
        success: success ?? this.success,
        onSuccess: onSuccess ?? this.onSuccess,
        successContainer: successContainer ?? this.successContainer,
        onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
        outlineVariantTint: outlineVariantTint ?? this.outlineVariantTint,
        surface1: surface1 ?? this.surface1,
        surface2: surface2 ?? this.surface2,
        surface3: surface3 ?? this.surface3,
        surface4: surface4 ?? this.surface4,
      );

  @override
  ThemeExtension<MaterialCustomColors> lerp(
    covariant ThemeExtension<MaterialCustomColors>? other,
    double t,
  ) {
    if (other is! MaterialCustomColors) {
      return this;
    }
    return MaterialCustomColors(
      success: Color.lerp(success, other.success, t) ?? success,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t) ?? onSuccess,
      successContainer:
          Color.lerp(successContainer, other.successContainer, t) ??
              successContainer,
      onSuccessContainer:
          Color.lerp(onSuccessContainer, other.onSuccessContainer, t) ??
              onSuccessContainer,
      outlineVariantTint:
          Color.lerp(outlineVariantTint, other.outlineVariantTint, t) ??
              outlineVariantTint,
      surface1: Color.lerp(surface1, other.surface1, t) ?? surface1,
      surface2: Color.lerp(surface2, other.surface2, t) ?? surface2,
      surface3: Color.lerp(surface3, other.surface3, t) ?? surface3,
      surface4: Color.lerp(surface4, other.surface4, t) ?? surface4,
    );
  }
}
