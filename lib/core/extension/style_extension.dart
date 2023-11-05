import 'package:flutter/material.dart';

extension AppContextExtension on BuildContext {
  /// Colors
  Color get primaryColor {
    return Theme.of(this).colorScheme.primary;
  }

  Color get onPrimaryColor {
    return Theme.of(this).colorScheme.onPrimary;
  }

  Color get primaryContainerColor {
    return Theme.of(this).colorScheme.primaryContainer;
  }

  Color get onPrimaryContainerColor {
    return Theme.of(this).colorScheme.onPrimaryContainer;
  }

  Color get secondaryColor {
    return Theme.of(this).colorScheme.secondary;
  }

  Color get onSecondaryColor {
    return Theme.of(this).colorScheme.onSecondary;
  }

  Color get secondaryContainerColor {
    return Theme.of(this).colorScheme.secondaryContainer;
  }

  Color get onSecondaryContainerColor {
    return Theme.of(this).colorScheme.onSecondaryContainer;
  }

  Color get tertiaryColor {
    return Theme.of(this).colorScheme.tertiary;
  }

  Color get onTertiaryColor {
    return Theme.of(this).colorScheme.onTertiary;
  }

  Color get tertiaryContainerColor {
    return Theme.of(this).colorScheme.tertiaryContainer;
  }

  Color get onTertiaryContainerColor {
    return Theme.of(this).colorScheme.onTertiaryContainer;
  }

  Color get backgroundColor {
    return Theme.of(this).colorScheme.background;
  }

  Color get onBackgroundColor {
    return Theme.of(this).colorScheme.onBackground;
  }

  Color get surfaceTintColor {
    return Theme.of(this).colorScheme.surfaceTint;
  }

  Color get surfaceColor {
    return Theme.of(this).colorScheme.surface;
  }

  Color get onSurfaceColor {
    return Theme.of(this).colorScheme.onSurface;
  }

  Color get surfaceVariantColor {
    return Theme.of(this).colorScheme.surfaceVariant;
  }

  Color get onSurfaceVariantColor {
    return Theme.of(this).colorScheme.onSurfaceVariant;
  }

  Color get outlineColor {
    return Theme.of(this).colorScheme.outline;
  }

  Color get outlineVariantColor {
    return Theme.of(this).colorScheme.surfaceVariant;
  }

  Color get errorColor {
    return Theme.of(this).colorScheme.error;
  }

  Color get onErrorColor {
    return Theme.of(this).colorScheme.onError;
  }

  Color get errorContainerColor {
    return Theme.of(this).colorScheme.errorContainer;
  }

  Color get onErrorContainerColor {
    return Theme.of(this).colorScheme.onErrorContainer;
  }

  Color get disabledColor {
    return Theme.of(this).colorScheme.onSurface.withOpacity(0.12);
  }

  Color get unselectedColor {
    return Theme.of(this).colorScheme.onSurface.withOpacity(0.5);
  }

  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }

  Color get shadowColor {
    return Theme.of(this).colorScheme.shadow;
  }

  /// Text Styles
  TextStyle? get displayLarge {
    return Theme.of(this).textTheme.displayLarge;
  }

  TextStyle? get displayMedium {
    return Theme.of(this).textTheme.displayMedium;
  }

  TextStyle? get displaySmall {
    return Theme.of(this).textTheme.displaySmall;
  }

  TextStyle? get headlineLarge {
    return Theme.of(this).textTheme.headlineLarge;
  }

  TextStyle? get headlineMedium {
    return Theme.of(this).textTheme.headlineMedium;
  }

  TextStyle? get headlineSmall {
    return Theme.of(this).textTheme.headlineSmall;
  }

  TextStyle? get titleLarge {
    return Theme.of(this).textTheme.titleLarge;
  }

  TextStyle? get titleMedium {
    return Theme.of(this).textTheme.titleMedium;
  }

  TextStyle? get titleSmall {
    return Theme.of(this).textTheme.titleSmall;
  }

  TextStyle? get labelLarge {
    return Theme.of(this).textTheme.labelLarge;
  }

  TextStyle? get labelMedium {
    return Theme.of(this).textTheme.labelMedium;
  }

  TextStyle? get labelSmall {
    return Theme.of(this).textTheme.labelSmall;
  }

  TextStyle? get bodyLarge {
    return Theme.of(this).textTheme.bodyLarge;
  }

  TextStyle? get bodyMedium {
    return Theme.of(this).textTheme.bodyMedium;
  }

  TextStyle? get bodySmall {
    return Theme.of(this).textTheme.bodySmall;
  }
}
