import 'package:flutter/material.dart';

import '../common/MostRecentSharedPrefences.dart';
import '../home/Sura.dart';

class MostRecentProvider extends ChangeNotifier {
  late MostRecentSharedPreferences mostRecentSharedPreferences;
  late List<Chapter> _mostRecentChapters;

  List<Chapter> getMostRecentChapters() {
    return _mostRecentChapters;
  }

  MostRecentProvider() {
    mostRecentSharedPreferences = MostRecentSharedPreferences.getInstance();
    _mostRecentChapters = [];
    refreshMostRecentChapters();
  }

  void saveChapter(Chapter chapter) async {
    await mostRecentSharedPreferences.saveChapter(chapter.chapterIndex);
    refreshMostRecentChapters();
  }

  void refreshMostRecentChapters() {
    _mostRecentChapters = [];
    var savedChaptersIndicesList = mostRecentSharedPreferences.getMostRecentChapters();
    savedChaptersIndicesList.forEach((chapterIndex) {
      // chapter indices starts from 1-> 114
      var chapter = Chapter.chapters[chapterIndex - 1];
      _mostRecentChapters.add(chapter);
    });
    notifyListeners();
  }

}