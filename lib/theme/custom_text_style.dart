import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargeMulishBluegray400 =>
      theme.textTheme.bodyLarge!.mulish.copyWith(
        color: appTheme.gray20001,
      );
  static get bodyLargeMulishGray700 =>
      theme.textTheme.bodyLarge!.mulish.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeMulishGray900 =>
      theme.textTheme.bodyLarge!.mulish.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargePoppinsBlack900 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargePoppinsBlack900_1 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyLargePoppinsGray700 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargePoppinsGray90001 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.gray90001.withOpacity(0.49),
      );
  static get bodyLargePoppinsPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeRobotoPrimary =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumInterBlack900 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumMulishGray90001 =>
      theme.textTheme.bodyMedium!.mulish.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumPoppinsBlack900_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900.withOpacity(0.53),
      );
  static get bodyMediumPoppinsGray900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray900.withOpacity(0.49),
      );
  static get bodyMediumPoppinsGray90001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumPoppinsGray90001_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90001.withOpacity(0.49),
      );
  static get bodyMediumPoppinsGray900_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumPoppinsRed600 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.red600,
      );
  static get bodySmallGray50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50,
      );
  static get bodySmallGray50_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 11.fSize,
      );
  static get bodySmallMulishGray70002 =>
      theme.textTheme.bodySmall!.mulish.copyWith(
        color: appTheme.gray20001,
      );
  static get bodySmallMulishGray90001 =>
      theme.textTheme.bodySmall!.mulish.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallMulishGray90001_1 =>
      theme.textTheme.bodySmall!.mulish.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsGray50 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray50,
        fontSize: 11.fSize,
      );
  static get bodySmallPoppinsPrimaryContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallPrimaryContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Headline text style
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallInterBlack900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallInterBlack900SemiBold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallInterGray50 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallRobotoPrimary =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeMulishGray90001 =>
      theme.textTheme.labelLarge!.mulish.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargeOnPrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargePoppinsPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePoppinsPrimaryContainer_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.5),
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumMulishGray90001 =>
      theme.textTheme.labelMedium!.mulish.copyWith(
        color: appTheme.gray90001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumMulishGray90001Bold =>
      theme.textTheme.labelMedium!.mulish.copyWith(
        color: appTheme.gray90001,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  // Roboto text style
  static get robotoGray900 => TextStyle(
        color: appTheme.gray900,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).roboto;
  static get robotoGray90001 => TextStyle(
        color: appTheme.gray90001,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).roboto;
  // Title text style
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsGray700 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumMulishGray900 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumMulishGray90001 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMulishGray90001_1 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray50 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
      
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins;
  static get titleSmallPoppinsBlack900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsBlack900_1 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallPoppinsPrimaryContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
