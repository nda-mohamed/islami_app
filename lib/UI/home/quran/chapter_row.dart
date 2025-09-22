import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/Sura.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:islami_app/UI/routes.dart';

import '../../design.dart';

class ChapterRow extends StatelessWidget {
  Chapter chapter;
  ChapterRow({required this.chapter, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.ChapterDetails.route, arguments: chapter);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Svg(AppImages.star),
                    ),
                  ),
                  child: Text("${chapter.chapterIndex}",
                  style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(width: 24,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chapter.englishName),
                    SizedBox(height: 5,),
                    Text('${(chapter.versesNumber)} verses',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
            Text(chapter.arabicName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
  
  
}