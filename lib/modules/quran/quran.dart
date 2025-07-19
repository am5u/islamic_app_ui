import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/services/local_storge_key.dart';
import 'package:islamicapp_ui/core/services/local_storge_services.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/quran/sura/model/suradata.dart';
import 'package:islamicapp_ui/modules/quran/sura/sura.dart';
import 'package:islamicapp_ui/modules/quran/suralist.dart';
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
  @override
  void initState() {
    loadRecentData();
    super.initState();
  }

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

  List<String> recentIndexSura = [];
  List<SuraData> recentSuraList = [];

  OnSuraTab(int index) {
    _cashingrecentIndexSura(index);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            SuraScreen(suraData: SuraList.suraDataList[index],),
      ),
    );
  }

  _cashingrecentIndexSura(int index) {
    var inedexString = index.toString();
    if (recentIndexSura.contains(inedexString)) {
      return;
    }
    if (recentIndexSura.length == 5) {
      recentIndexSura.removeLast();
    }

    recentIndexSura.insert(0, index.toString());
    LocalStorgeServices.setStringList(
        LocalStorgeKey.recentSura, recentIndexSura);

    loadRecentData();
    setState(() {

    });
  }

  loadRecentData() {
    recentSuraList = [];
    recentIndexSura = [];
    recentIndexSura =
        LocalStorgeServices.getListString(LocalStorgeKey.recentSura) ?? [];
    for (var index in recentIndexSura) {
      int indexint = int.parse(index);
      recentSuraList.add(SuraList.suraDataList[indexint]);
    }
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
              recentSuraList.isNotEmpty ? SuraListSprated(
                  suraList: recentSuraList) : Text("dsfdsfdsf"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Suras List",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.apply(color: Colors.white),
                ),
              ),
              SuraListVertical(
                  onSuraTab: OnSuraTab, suraList: _filteredSuraList),
            ],
          ),
        ),
      ),


    );
  }
}
