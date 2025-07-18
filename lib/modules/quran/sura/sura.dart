import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/quran/sura/model/suradata.dart';
import 'package:islamicapp_ui/modules/quran/suralist.dart';

class SuraScreen extends StatefulWidget {
  const SuraScreen({super.key,  required this.suraData});
  static const String routName = "/sura";
  final SuraData suraData;

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  String _fileContents = '';

  @override
  void initState() {
    loadAsset();
    super.initState();
  }

  Future<void> loadAsset() async {
    String fileText = await rootBundle.loadString(
    widget.suraData.suraAyaFile,
    );
    setState(() {
      _fileContents = fileText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        backgroundColor: Color(0xff202020),
        title: Center(
          child: Text(
           widget.suraData.suraNameEnglish,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.apply(color: TColors.primaryColor),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: TColors.primaryColor),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 92,
                  height: 92,

                  child: Image(
                    image: AssetImage(TImages.leftCornerGold),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                widget.suraData.suraNameArabic,

                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.apply(color: TColors.primaryColor),
                ),
                SizedBox(
                  width: 92,
                  height: 92,

                  child: Image(image: AssetImage(TImages.rightCornerGold)),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child:
                  _fileContents.isEmpty
                      ? const SizedBox.shrink()
                      : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                            _fileContents
                                .trim()
                                .split('\n')
                                .asMap()
                                .entries
                                .map((entry) {
                                  final index = entry.key;
                                  final ayah = entry.value.trim();
                                  if (ayah.isEmpty) {
                                    return const SizedBox.shrink();
                                  }
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4.0,
                                    ),
                                    child: Text(
                                      '$ayah (${index + 1})',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .apply(color: TColors.primaryColor),
                                    ),
                                  );
                                })
                                .toList(),
                      ),
            ),
          ),

          Container(
            width: double.infinity,
            height: 112,
            color: Colors.black,
            child: Image(image: AssetImage(TImages.footer)),
          ),
        ],
      ),
    );
  }
}
