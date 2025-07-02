import 'package:flutter/material.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_item_slide.dart';

class SuraListSprated extends StatelessWidget {
  const SuraListSprated({
    super.key,
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
          itemBuilder:(_,index)=>  SuraItemSlider(), separatorBuilder:(_,index)=> SizedBox(width: 10,), itemCount: 4),
      ),
    );
  }
}