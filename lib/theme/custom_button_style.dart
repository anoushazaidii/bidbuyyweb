import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray20003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientOnPrimaryContainerToPrimaryDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(26.h),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(0.95, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToPrimaryTL17Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(17.h),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(0.95, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToPrimaryTL22Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.1),
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(0.95, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToPrimaryTL4Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(0.95, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
