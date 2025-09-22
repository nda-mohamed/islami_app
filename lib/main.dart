import 'package:flutter/material.dart';
import 'package:islami_app/UI/chapter_details/ChapterDetails.dart';
import 'package:islami_app/UI/design.dart';
import 'package:islami_app/UI/routes.dart';
import 'package:islami_app/UI/home/HomeScreen.dart';
import 'package:islami_app/UI/intro/IntroScreen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami app',
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        IntroScreen.routeName: (context) => const IntroScreen(),
        AppRoutes.HomeScreen.route : (context) => HomeScreen(),
        AppRoutes.ChapterDetails.route : (context) => ChapterDetails(),
      },
      initialRoute: IntroScreen.routeName,
    );
  }
}

