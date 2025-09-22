import 'package:flutter/material.dart';
import 'package:islami_app/UI/design.dart';
import 'package:islami_app/UI/home/hadeth/HadethContent.dart';
import 'package:islami_app/UI/home/quran/QuranContent.dart';
import 'package:islami_app/UI/home/sebha/SebhaContent.dart';
import 'package:islami_app/UI/home/radio/RadioContent.dart';
import 'package:islami_app/UI/home/time/TimeContent.dart';
import '../common/AppScreenWrapper.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}


class _HomeScreenState extends State<HomeScreen> {
  int selectedTapIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AppScreenWrapper(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(AppImages.islamilogo,
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 12,
                ),
                  child: tabs[selectedTapIndex]
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTapIndex,
          onTap: (index){
            setState(() {
              selectedTapIndex = index;
            });
          },
          items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.gold,
                icon: ImageIcon(AssetImage(AppImages.ic_quran)), label: 'Quran',),
              BottomNavigationBarItem(
                backgroundColor: AppColors.gold,
                icon: ImageIcon(AssetImage(AppImages.ic_hadeth)), label: 'Hadith',),
              BottomNavigationBarItem(
                backgroundColor: AppColors.gold,
                icon: ImageIcon(AssetImage(AppImages.ic_sebha)), label: 'Sebha',),
              BottomNavigationBarItem(
                backgroundColor: AppColors.gold,
                icon: ImageIcon(AssetImage(AppImages.ic_radio)), label: 'Radio',),
              BottomNavigationBarItem(
                backgroundColor: AppColors.gold,
                icon: ImageIcon(AssetImage(AppImages.ic_stats)), label: 'Time',),
            ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
  QuranContent(),
  HadethContent(),
  SebhaContent(),
  RadioContent(),
  TimeContent(),
  ];
}