import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/quran/chapter_row.dart';

import '../Sura.dart';

class QuranContent extends StatelessWidget {
    QuranContent({super.key});

    final List<Chapter> chapters = Chapter.getQuranChapters();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ChapterRow(chapter: chapters[index]);
                },
              separatorBuilder: (context, index) {
                  return Container(
                    height: 1,
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 40),
                  );
              },
              itemCount: 114,
            ),
        ),
      ],
    );
  }

}