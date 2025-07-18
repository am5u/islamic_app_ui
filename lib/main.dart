import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/services/local_storge_services.dart';
import 'package:islamicapp_ui/core/theme/theme.dart';
import 'package:islamicapp_ui/layout.dart';
import 'package:islamicapp_ui/modules/onboarding/on_boarding.dart';
import 'package:islamicapp_ui/modules/quran/quran.dart';
import 'package:islamicapp_ui/modules/radio/radio.dart';
import 'package:islamicapp_ui/modules/sepha/sepha.dart';
import 'package:islamicapp_ui/modules/splash/splash_screen.dart';
import 'package:islamicapp_ui/modules/time/time.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorgeServices.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightAppTheme,

      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routName,
      routes: {
        QuranScreen.routName: (context) => QuranScreen(),
        SplashScreen.routName: (context) => SplashScreen(),
        Layout.routName: (context) => Layout(),
        SephaScreen.routName: (context) => SephaScreen(),
        TimeScreen.routName: (context) => TimeScreen(),
        RadioScreen.routName: (context) => RadioScreen(),
        OnboardingScreen.routName: (context) => OnboardingScreen(),

        // SuraScreen.routName:(context)=>SuraScreen(),
      },
    );
  }
}
