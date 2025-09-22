import 'package:flutter/cupertino.dart';
import '../design.dart';

class AppScreenWrapper extends StatelessWidget{
  Widget child;
  String backgroundImagePath;

  AppScreenWrapper ({
    required this.child,
    this.backgroundImagePath = AppImages.defaultBackground,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Background.jpg"),
        ),
      ),
      child: child,
    );
  }

}