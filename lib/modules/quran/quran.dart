import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/quran/suralist.dart';
import 'package:islamicapp_ui/modules/quran/sura/model/suradata.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/quran_header.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_list_slider.dart';
import 'package:islamicapp_ui/modules/quran/wedgits/sura_list_vertical.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});
  static const String routName = "/quran";

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<SuraData> _filteredSuraList = SuraList.suraDataList;

  void _onSearchChanged(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredSuraList = SuraList.suraDataList;
      } else {
        _filteredSuraList =
            SuraList.suraDataList.where((sura) {
              return sura.suraNameArabic.toLowerCase().contains(
                    query.toLowerCase(),
                  ) ||
                  sura.suraNameEnglish.toLowerCase().contains(
                    query.toLowerCase(),
                  );
            }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(
      imageUrl: TImages.quranBackground,
      child: Container(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuranHeader(onSearchChanged: _onSearchChanged),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Most Recently",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.apply(color: Colors.white),
                ),
              ),
              SuraListSprated(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Suras List",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.apply(color: Colors.white),
                ),
              ),
              SuraListVertical(suraList: _filteredSuraList),
            ],
          ),
        ),
      ),
    );
    List<String> recentSuraIndexList = [];
    List<SuraData> recentSuraList = [];
    
    onSuraTap(int index) {}
  }
}
