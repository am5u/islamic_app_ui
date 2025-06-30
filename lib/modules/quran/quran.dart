import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/quran_header.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_list_slider.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_list_vertical.dart';


class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});
  static const String routName = "/quran";
  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(
      imageUrl: TImages.quranBackground,
     
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            QuranHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Most Recently",style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white),),
            ),
            SuraListSprated(),
                Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Suras List",style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white),),
        
            ),
            SuraListVertical()
        
        
        
          ],
        ),
      ),
    );
  
  }
}


