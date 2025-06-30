import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/hadeth/hadeth.dart';
import 'package:islamicapp_ui/modules/quran/quran.dart';
import 'package:islamicapp_ui/modules/radio/radio.dart';
import 'package:islamicapp_ui/modules/sepha/sepha.dart';
import 'package:islamicapp_ui/modules/time/time.dart';

class Layout extends StatefulWidget {
  static const String routName = '/layout';

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> screen = [
      QuranScreen(),
      HadethScreen(),
      SephaScreen(),
      RadioScreen(),
      TimeScreen(),
    ];
    void onTapItem(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onTapItem,

        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: BoxDecoration(
                color:
                    _selectedIndex == 0 ? Colors.black26 : Colors.transparent,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Image(image: AssetImage(TImages.quranIcon)),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon:  Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: BoxDecoration(
                color:
                    _selectedIndex == 1 ? Colors.black26 : Colors.transparent,
                borderRadius: BorderRadius.circular(60),
              ),
              child:Image(image: AssetImage(TImages.hadethIcon))),
            label: 'Hadeth',
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: BoxDecoration(
                color:
                    _selectedIndex == 2 ? Colors.black26 : Colors.transparent,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Image(image: AssetImage(TImages.sephaIcon))),
            label: 'Sepha',
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: BoxDecoration(
                color:
                    _selectedIndex == 3 ? Colors.black26 : Colors.transparent,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Image(image: AssetImage(TImages.radioIcon))),
            label: 'Radio',
          ),

          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              decoration: BoxDecoration(
                color:
                    _selectedIndex == 4 ? Colors.black26 : Colors.transparent,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Image(image: AssetImage(TImages.timeIcon))),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
