import 'package:flutter/material.dart';
import 'package:islamicapp_ui/modules/quran/sura/model/suradata.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_item_list.dart';

class SuraListVertical extends StatelessWidget {
  final List<SuraData> suraList;
  final Function(int) onSuraTab;

  const SuraListVertical(
      {super.key, required this.suraList, required this.onSuraTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, index) =>
            SuraItemList(
                onSuratab: () => onSuraTab(index), suraData: suraList[index]),
        separatorBuilder: (_, index) => Divider(),
        itemCount: suraList.length,
      ),
    );
  }
}
