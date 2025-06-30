import 'package:flutter/material.dart';
import 'package:islamicapp_ui/modules/quran/suralist.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_item_list.dart';

class SuraListVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder:
            (_, index) => SuraItemList(
              arabicName: SuraList.arabicAuranSuras[index],
              englishName: SuraList.englishQuranSurahs[index],
              ayaCount: SuraList.AyaNumber[index],
              suraNumber: index+1,
            ),
        separatorBuilder: (_, index) => Divider(),
        itemCount: 114,
      ),
    );
  }
}
