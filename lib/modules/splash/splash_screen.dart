import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/onboarding/on_boarding.dart';

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
    () {
      Navigator.pushReplacementNamed(context, OnboardingScreen.routName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(imageUrl: TImages.splashScreen,);
  }
}

