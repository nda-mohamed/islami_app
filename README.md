# 🕋 Islami App

An elegant, user-friendly **Islamic Companion** mobile application built using **Flutter**. Designed with a premium dark theme accented in traditional Islamic gold, the app serves as a comprehensive tool featuring the Holy Quran, Hadiths, a digital Tasbeeh counter, Quran radio, and prayer time indicators.

---

## ✨ Features

- **📖 Holy Quran Reader**: Access and read all 114 Suras. Displays Quranic text verse-by-verse in beautiful, legible Arabic typography (`Tajawal` font).
- **🕒 Most Recent Sura Tracker**: Saves the user's reading progress and highlights the last read Sura on the dashboard, making it easy to resume reading later. Persistent across restarts using `shared_preferences`.
- **📜 Hadith Library**: Browse through selected Hadiths with clean pagination and background card formatting.
- **📿 Digital Sebha (Tasbeeh)**: Interactive tasbeeh clicker interface to help users log their daily Azkar, featuring reset capabilities and counts.
- **📻 Holy Quran Radio**: Listen to Quranic broadcasts and channels directly within the application.
- **🕌 Prayer Times Indicator**: Real-time display tracking daily prayer times throughout the day.
- **🖤 Elegant Islamic Gold Theme**: Sophisticated dark theme (`AppThemes.darkTheme`) matching a customized gold palette (`#E2BE7F`) and vector overlays.

---

## 🛠️ Tech Stack & Dependencies

The application is built on **Flutter** and **Dart**, leveraging the following core packages:

- **State Management**: [provider](https://pub.dev/packages/provider) — Manages global data states, including the "Most Recent Sura" tracking logic.
- **Local Persistence**: `shared_preferences` — Stores reading history and recent stats locally.
- **Image Assets & Vectors**: `flutter_svg_provider` — Renders high-quality vector icons and backgrounds.
- **Launch Screen**: `flutter_native_splash` — Controls launch/splash screen displays.

---

## 📁 Project Directory Structure

```text
lib/
├── UI/
│   ├── chapter_details/
│   │   └── ChapterDetails.dart   # Page showing verses for a specific Quran Sura
│   ├── common/
│   │   ├── AppScreenWrapper.dart # Full-screen background and layout builder
│   │   └── MostRecentSharedPrefences.dart # Shared preferences wrapper class
│   ├── home/
│   │   ├── hadeth/
│   │   │   └── HadethContent.dart# Hadith listing tab UI
│   │   ├── quran/
│   │   │   ├── MostRecentSlider.dart # Recent reading history component
│   │   │   ├── QuranContent.dart     # Sura list catalog index page
│   │   │   └── chapter_row.dart      # Single Sura item card component
│   │   ├── radio/
│   │   │   └── RadioContent.dart     # Islamic radio player tab
│   │   ├── sebha/
│   │   │   └── SebhaContent.dart     # Digital Tasbeeh counter tab
│   │   ├── time/
│   │   │   └── TimeContent.dart      # Prayer times display tab
│   │   └── HomeScreen.dart       # Main bottom navigation orchestrator
│   ├── intro/
│   │   └── IntroScreen.dart      # Welcome onboarding slides
│   ├── providers/
│   │   └── MostRecentProvider.dart # Context syncing reading history state
│   ├── Chapter.dart              # Sura UI class and data model
│   ├── design.dart               # Theme configs (AppColors, AppImages, AppThemes)
│   └── routes.dart               # Navigation routes registry
└── main.dart                     # App launcher initiating providers & initial routes
```

---

## 🚀 Getting Started

Follow these steps to run the project on your local machine:

### 1. Prerequisites

Ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your system.

```bash
flutter --version
```

### 2. Clone the Repository

```bash
git clone https://github.com/nda-mohamed/islami_app.git
cd islami_app
```

### 3. Fetch Dependencies

Download the required packages defined in `pubspec.yaml`:

```bash
flutter pub get
```

### 4. Run the App

Execute on an emulator or a connected device:

```bash
flutter run
```
