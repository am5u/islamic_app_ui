import 'dart:math';

import 'package:flutter/material.dart';
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

  final int total = 30;
  List<String> doaa = ["لا اله الا الله ", "الله اكبر ", "الحمدلله"];

  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(
      imageUrl: TImages.sephaBackground,
      child: Column(
        children: [
          const SizedBox(height: 40),
          Image(image: AssetImage(TImages.headerLogo)),

          const SizedBox(height: 10),
          const Text(
            "سبح باسم ربك الاعلى",
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.white,
              fontSize: 28,
            ),
          ),

          Column(
            children: [
              Container(
                height: 100,
                child: Image(image: AssetImage(TImages.headOfSebha)),
              ),
              Container(
                width: 100,
                height: 400,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Circular ring of sepha images
                      for (int j = 0; j < total; j++)
                        Transform.rotate(
                          angle: (2 * pi / total) * j,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Opacity(
                              opacity: j < number ? 1.0 : 0.2,
                              child: Image.asset(
                                TImages.signleSephaCounter,
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                        ),

                      // Center Doaa and Count
                      Positioned(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (number == total) {
                                number = 0;
                                if (i < doaa.length - 1) {
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
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                doaa[i],
                                style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "$number",
                                style: const TextStyle(
                                  fontSize: 36,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
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
