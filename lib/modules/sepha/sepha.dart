import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';

class SephaScreen extends StatefulWidget {
  const SephaScreen({super.key});
  static const String routName = "/quran";

  @override
  State<SephaScreen> createState() => _SephaScreenState();
}

class _SephaScreenState extends State<SephaScreen> {
  int number = 0;
  int i = 0;

  List<String> doaa = ["لا اله الا الله ", "الله اكبر ", "الحمدلله"];

  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(
      imageUrl: TImages.sephaBackground,
      child: Column(
        spacing: 20,
        children: [
          Image(image: AssetImage(TImages.headerLogo)),

          Text(
            "سبح باسم ربك الاعلى ",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontSize: 36,
            ),
          ),

          Stack(
            children: [
              Image(image: AssetImage(TImages.sepha)),
              Positioned(
                bottom: 150,
                left: 0,
                right: 0,

                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (number == 30) {
                        number = 0;
                        if (i < doaa.length-1) {
                          i++;
                        } else {
                          i = 0;
                          
                        }
                      } else {
                        number++;
                      }
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        "${doaa[i]}",
                        style: TextStyle(fontSize: 36, color: Colors.white),
                      ),
                      Text(
                        "$number",
                        style: TextStyle(fontSize: 36, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
