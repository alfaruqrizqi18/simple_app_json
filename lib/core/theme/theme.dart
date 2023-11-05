import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const bool _useMaterial3 = true;
  static ThemeData light = ThemeData(
    useMaterial3: _useMaterial3,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: lightColorScheme.background,
    brightness: Brightness.light,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: _useMaterial3,
    colorScheme: darkColorScheme,
    scaffoldBackgroundColor: darkColorScheme.background,
    brightness: Brightness.dark,
  );

  static const lightColorScheme = ColorScheme(
    
    brightness: Brightness.light,
    primary: Color(0xFFFF8C00),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF71F7EC),
    onPrimaryContainer: Color(0xFF00201E),
    secondary: Color(0xFF4A6360),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFCCE8E4),
    onSecondaryContainer: Color(0xFF051F1D),
    tertiary: Color(0xFF47617A),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFCFE5FF),
    onTertiaryContainer: Color(0xFF001D33),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    outline: Color(0xFF6F7977),
    background: Color(0xFFFAFDFB),
    onBackground: Color(0xFF191C1C),
    surface: Color(0xFFF7FAF8),
    onSurface: Color(0xFF191C1C),
    surfaceVariant: Color(0xFFDAE5E2),
    onSurfaceVariant: Color(0xFF3F4947),
    inverseSurface: Color(0xFF2D3130),
    onInverseSurface: Color(0xFFEFF1F0),
    inversePrimary: Color(0xFF50DBCF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF006A64),
    outlineVariant: Color(0xFFBEC9C6),
    scrim: Color(0xFF000000),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFF8C00),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF00504B),
    onPrimaryContainer: Color(0xFF00201E),
    secondary: Color(0xFFB0CCC8),
    onSecondary: Color(0xFF1C3532),
    secondaryContainer: Color(0xFF324B48),
    onSecondaryContainer: Color(0xFFCCE8E4),
    tertiary: Color(0xFFAFC9E7),
    onTertiary: Color(0xFF17324A),
    tertiaryContainer: Color(0xFF2F4962),
    onTertiaryContainer: Color(0xFFCFE5FF),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    outline: Color(0xFF899391),
    background: Color(0xFF191C1C),
    onBackground: Color(0xFFE0E3E1),
    surface: Color(0xFF101414),
    onSurface: Color(0xFFC4C7C6),
    surfaceVariant: Color(0xFF3F4947),
    onSurfaceVariant: Color(0xFFBEC9C6),
    inverseSurface: Color(0xFFE0E3E1),
    onInverseSurface: Color(0xFF191C1C),
    inversePrimary: Color(0xFF006A64),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF50DBCF),
    outlineVariant: Color(0xFF3F4947),
    scrim: Color(0xFF000000),
  );
}
