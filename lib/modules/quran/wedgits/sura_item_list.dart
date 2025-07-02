import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/quran/sura/sura.dart';

class SuraItemList extends StatelessWidget {
  final String arabicName;
  final String englishName;
  final int suraNumber;
  final String ayaCount;

  const SuraItemList({
    super.key,
    required this.arabicName,
    required this.englishName,
    required this.suraNumber,
    required this.ayaCount,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SuraScreen(Suranumber: suraNumber)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(TImages.suraIcon)),
              ),
              child: Center(
                child: Text(
                  "$suraNumber",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.apply(color: TColors.textWhite),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    englishName,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.apply(color: TColors.textWhite),
                  ),
                  Text(
                    "${ayaCount}Verses",
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.apply(color: TColors.textWhite),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              arabicName,
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.apply(color: TColors.textWhite),
            ),
          ],
        ),
      ),
    );
  }
}
