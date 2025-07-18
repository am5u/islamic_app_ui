import 'package:flutter/material.dart';
import 'package:islamicapp_ui/modules/quran/sura/model/suradata.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_item_list.dart';

class SuraListVertical extends StatelessWidget {
  final List<SuraData> suraList;

  const SuraListVertical({super.key, required this.suraList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, index) => SuraItemList(suraData: suraList[index]),
        separatorBuilder: (_, index) => Divider(),
        itemCount: suraList.length,
      ),
    );
  }
}
