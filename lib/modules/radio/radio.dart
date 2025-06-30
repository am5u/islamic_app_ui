import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});
  static const String routName = "/radio";
  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(imageUrl: TImages.radiobackground);
  }
}
