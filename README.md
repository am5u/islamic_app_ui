# IslamicApp UI

A modern Flutter application providing a beautiful Islamic experience, including Quran, Hadith, Prayer Times, Azkar, Radio, and more.

---

## ✨ Features

- **Onboarding:** Interactive onboarding screens to introduce app features.
- **Prayer Times:** Displays daily prayer times, highlights the next prayer, and shows both Gregorian and Hijri dates.
- **Quran:** Browse Surahs, read Quranic text, and navigate easily.
- **Hadith:** Access a collection of Hadiths with details and navigation.
- **Azkar:** Morning and evening Azkar, with beautiful illustrations.
- **Radio:** Listen to Islamic radio stations.
- **Sepha:** Digital Tasbeeh (prayer beads) for counting dhikr.
- **Splash Screen:** Custom splash screen for a polished launch experience.
- **Modern UI:** Custom themes, reusable widgets, and responsive layouts.
- **Assets:** Rich set of images, icons, and fonts for a premium look.

---

## 📱 Screenshots

![Alt text](https://github.com/am5u/islamic_app_ui/blob/82f69e3b3037e27368fde6c36bfe2278e4ec5f58/islamic_ui.png)

---

## 📁 Project Structure

```
lib/
  core/
    constant/         # App-wide constants (colors, image paths)
    layout/           # Layout helpers (if any)
    theme/            # Theme and text styles
    wedgits/          # Reusable widgets (e.g., containers)
  modules/
    hadeth/           # Hadith feature (list, details, widgets)
    onboarding/       # Onboarding screens and logic
    quran/            # Quran feature (sura list, widgets)
    radio/            # Radio feature (player, tabs, widgets)
    sepha/            # Sepha (tasbeeh) feature
    splash/           # Splash screen
    time/             # Prayer times and Azkar (widgets, logic)
  layout.dart         # Main layout file
  main.dart           # App entry point
assets/
  fonts/              # Custom fonts
  icons/              # App icons (various resolutions)
  images/             # App images (backgrounds, illustrations)
  json/               # Data files (Hadith, Suras)
test/
  widget_test.dart    # Example widget test
```

---

## 🛠️ How to Edit & Extend

### 1. **Add/Edit Features**
- Each main feature is in `lib/modules/<feature>/`.
- To add a new feature, create a new folder in `modules` and follow the structure of existing modules.

### 2. **UI Customization**
- **Colors:** Edit or add to `lib/core/constant/colors.dart`.
- **Images:** Add new images to `assets/images/` and reference them in `lib/core/constant/images_string.dart`.
- **Fonts:** Add fonts to `assets/fonts/` and update `pubspec.yaml` accordingly.
- **Reusable Widgets:** Place shared widgets in `lib/core/wedgits/`.

### 3. **Prayer Times & Azkar**
- Edit `lib/modules/time/time.dart` for the main time screen.
- Azkar cards and grid are in `lib/modules/time/wedgits/`.

### 4. **Quran & Hadith Data**
- Quran Suras: `assets/json/Suras/`
- Hadith: `assets/json/Hadeth/`
- You can update or add new data files here.

### 5. **Theme & Styles**
- Update `lib/core/theme/` for text and widget themes.
- Use `lib/core/theme/wedgits_theme/` for specific widget theming.

### 6. **Navigation**
- Main navigation is typically managed in `main.dart` and `layout.dart`.

### 7. **Testing**
- Add tests in the `test/` directory.

---

## 🚀 Getting Started

1. **Install dependencies:**
   ```
   flutter pub get
   ```
2. **Run the app:**
   ```
   flutter run
   ```
3. **Edit code:** Open any file in `lib/` to start customizing.

---

## 📝 Helpful Tips

- **Asset Management:** Always add new assets to `pubspec.yaml`.
- **Widget Reuse:** Use and extend widgets in `core/wedgits/` for consistency.
- **Data Updates:** For new Suras or Hadith, add `.txt` files in the respective `assets/json/` subfolders.
- **Theme Consistency:** Use `TColors` and theme files for all color and style references.
- **Responsive Design:** Use Flutter's layout widgets (e.g., `Expanded`, `Flexible`, `MediaQuery`) for best results on all devices.

---

## 📄 License

This project is for educational and personal use. Please respect copyright and data sources.

---

>
