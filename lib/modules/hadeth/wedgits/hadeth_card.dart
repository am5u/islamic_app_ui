import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class HadethCard extends StatelessWidget {
  const HadethCard({super.key, required this.hadethNumber, required this.content});
  final String hadethNumber;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Container(
                  width: 92,
                  height: 92,

                  child: Image(
                    image: AssetImage(TImages.leftCornerBlack),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                 hadethNumber,

                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.apply(color: TColors.textBlack),
                ),
                Container(
                  width: 92,
                  height: 92,

                  child: Image(image: AssetImage(TImages.rightCornerBlack)),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                width: 266,
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.apply(color: TColors.textBlack),
                ),
              ),
            ),
          ),

          Image(image: AssetImage(TImages.footHadeth)),
        ],
      ),
    );
  }
}
