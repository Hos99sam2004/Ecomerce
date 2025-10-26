import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

ThemeData darkTheme = ThemeData(
  splashFactory: NoSplash.splashFactory,
  colorScheme: const ColorScheme.dark(primary: AppColors.bluegrey),
  brightness: Brightness.dark,
  useMaterial3: true,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.grey.withAlpha(128)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: AppColors.bluegrey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.grey.withAlpha(128)),
    ),
    floatingLabelStyle: const TextStyle(fontSize: 14),
    hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Colors.grey,
    ),
  ),
  bottomNavigationBarTheme: darkBottomNavigationBarTheme,
);
BottomNavigationBarThemeData darkBottomNavigationBarTheme =
    const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF121212),
      selectedItemColor: AppColors.bluegrey,
      unselectedItemColor: AppColors.bluegrey,
      type: BottomNavigationBarType.fixed,
    );
