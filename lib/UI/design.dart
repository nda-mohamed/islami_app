import 'package:flutter/material.dart';

class AppColors {
  static const Color gold = Color(0xFFE2BE7F);
}

class AppImages {
  static const String ic_stats = "assets/images/ic_stats.png";
  static const String ic_radio = "assets/images/ic_radio-1.png";
  static const String ic_sebha = "assets/images/ic_sebha-1.png";
  static const String ic_hadeth = "assets/images/ic_hadeth-1.png";
  static const String ic_quran = "assets/images/ic_quran.png";

  static const String defaultBackground = "assets/images/Background.jpg";
  static const String islamilogo = "assets/images/islamilogo.png";
  static const String star = "assets/images/Vector.svg";


}

class AppThemes {
  static var darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(primary: AppColors.gold),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: AppColors.gold,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.gold),
    ),

    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),

      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.gold,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 36,
      ),

      unselectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),

      selectedLabelStyle: TextStyle(
        color: Colors.white,
      ),

      unselectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
    ),

      scaffoldBackgroundColor: Colors.transparent,
  );
}