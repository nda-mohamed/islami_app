import 'package:flutter/material.dart';
import '../home/HomeScreen.dart';

class IntroScreen extends StatefulWidget {
  static const String routeName = "intro";

  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  final List<Map<String, String>> introData = [
    {"image": "assets/images/intro1.png", "title": "Welcome To Islami App", "subtitle": ""},
    {"image": "assets/images/intro2.png", "title": "Welcome To Islami", "subtitle": "We Are Very Excited To Have You In Our Community"},
    {"image": "assets/images/intro3.png", "title": "Reading the Quran", "subtitle": "Read, and your Lord is the Most Generous"},
    {"image": "assets/images/intro4.png", "title": "Bearish", "subtitle": "Praise the name of your Lord, the Most High"},
    {"image": "assets/images/intro5.png", "title": "Holy Quran Radio", "subtitle": "You can listen to the Holy Quran Radio through the application for free and easily"},
  ];

  void nextPage() {
    if (currentPage < introData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      body: SafeArea(
        child: Column(
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Image.asset(
                "assets/images/islamilogo.png",
                height: 171,
                width: 291,
                fit: BoxFit.contain,
              ),
            ),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() => currentPage = index);
                },
                itemCount: introData.length,
                itemBuilder: (context, index) {
                  return ListView(
                    padding: const EdgeInsets.all(20),
                    children: [
                      Image.asset(
                        introData[index]["image"]!,
                        height: 415,
                        width: 398,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        introData[index]["title"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Color(0xFFE2BE7F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      if (introData[index]["subtitle"]!.isNotEmpty)
                        Text(
                          introData[index]["subtitle"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFFE2BE7F),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: currentPage == 0 ? null : previousPage,
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: currentPage == 0
                            ? Colors.grey
                            : const Color(0xFFE2BE7F),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      introData.length,
                          (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: currentPage == index ? 14 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: currentPage == index
                              ? const Color(0xFFE2BE7F)
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: nextPage,
                    child: Text(
                      currentPage == introData.length - 1 ? "Finish" : "Next",
                      style: const TextStyle(
                        color: Color(0xFFE2BE7F),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
