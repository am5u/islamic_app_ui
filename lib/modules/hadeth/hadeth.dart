import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/hadeth/wedgits/hadeth_list_slide.dart';


class HadethScreen extends StatelessWidget {
  const HadethScreen({super.key});
  static const String routName = "/hadeth";
  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(imageUrl:TImages.hadethBackground,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
      
          Image(image: AssetImage(TImages.headerLogo)),
      
          HadethListSlider()
      
        ],
      ),
    ),
    );
  }
}


