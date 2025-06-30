import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/hadeth/wedgits/hadeth_card.dart';

class HadethListSlider extends StatelessWidget {
  const HadethListSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return HadethCard(hadethNumber: index+1);
        },
        separatorBuilder: (_, index) => SizedBox(width: 20),
        itemCount: 50,
      ),
    );
  }
}
