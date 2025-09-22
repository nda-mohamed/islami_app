import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/UI/chapter_details/verse_item.dart';
import 'package:islami_app/UI/common/AppScreenWrapper.dart';
import 'package:islami_app/UI/design.dart';
import 'package:islami_app/UI/home/Sura.dart';

class ChapterDetails extends StatefulWidget {
  ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {

    var chapter = ModalRoute.of(context)!.settings.arguments as Chapter;

    if(verses.isEmpty)
      loadVerses(chapter.chapterIndex);

    return Scaffold(
      backgroundColor: Color(0xFF202020),
      appBar: AppBar(
        backgroundColor: Color(0xFF202020),
        title: Text(chapter.englishName),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/chapter_details_background.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(32),
                child: Text(
                  chapter.arabicName,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 75),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return VerseItem(verses[index], index + 1);
                    },
                    separatorBuilder: (context, index) => Container(height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 32,),
                      color: Theme.of(context).colorScheme.primary,),
                    itemCount: verses.length,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void loadVerses(int chapterIndex) async {   // async function can await
    String content = await rootBundle.loadString("assets/files/$chapterIndex.txt");
    List<String> lines =  content.trim().split("\n");
    setState(() {
      verses = lines;
    });
  }
}
