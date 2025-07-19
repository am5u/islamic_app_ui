import 'package:flutter/material.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_item_slide.dart';

import '../sura/model/suradata.dart';

class SuraListSprated extends StatelessWidget {
  final List<SuraData> suraList;

  const SuraListSprated({
    super.key, required this.suraList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(

          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
            itemBuilder: (_, index) =>
                SuraItemSlider(suraData: suraList[index],),
            separatorBuilder: (_, index) => SizedBox(width: 10,),
            itemCount: suraList.length),
      ),
    );
  }
}