import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/quran/sura/model/suradata.dart';
import 'package:islamicapp_ui/modules/quran/sura/sura.dart';

class SuraItemSlider extends StatelessWidget {
  const SuraItemSlider({super.key, required this.suraData});

  final SuraData suraData;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuraScreen(suraData: suraData),
          ),
        );
      },
      child: Container(
        width: 283,
        decoration: BoxDecoration(
          color: TColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    suraData.suraNameEnglish,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    suraData.suraNameArabic,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "${suraData.suraAyahsCount} Verses",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Expanded(child: Image(image: AssetImage(TImages.souraImge))),
          ],
        ),
      ),
    );
  }
}
