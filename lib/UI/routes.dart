import 'package:islami_app/UI/home/HomeScreen.dart';

class AppRoutesConstants {
  static const String homeScreen = "home";
}

enum AppRoutes {
  HomeScreen("home"),
  ChapterDetails("chapter_details"),
  ;

  final String route;

  const AppRoutes(this.route);


}