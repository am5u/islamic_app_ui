import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/quran/sura/model/suradata.dart';

class SuraItemList extends StatelessWidget {
  final SuraData suraData;
  final VoidCallback onSuratab;

  const SuraItemList(
      {super.key, required this.suraData, required this.onSuratab});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSuratab,
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
                  suraData.suraId,
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
                    suraData.suraNameEnglish,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.apply(color: TColors.textWhite),
                  ),
                  Text(
                    "${suraData.suraAyahsCount}Verses",
                    style: Theme.of(
                      context,
                    ).textTheme.titleSmall!.apply(color: TColors.textWhite),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              suraData.suraNameArabic,
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
