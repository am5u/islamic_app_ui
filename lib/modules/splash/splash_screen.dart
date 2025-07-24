import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/layout.dart';
import 'package:islamicapp_ui/modules/onboarding/on_boarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {

  static const String routName = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),
            () async {
          final prefs = await SharedPreferences.getInstance();
          final onBoarding = prefs.getBool("isFirstTime") ?? true;
          if (onBoarding == false)
            Navigator.pushReplacementNamed(context, Layout.routName);
          else
            Navigator.pushReplacementNamed(context, OnboardingScreen.routName);


    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(imageUrl: TImages.splashScreen,);
  }
}

