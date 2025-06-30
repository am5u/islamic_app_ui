import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class HadethCard extends StatefulWidget {
  const HadethCard({super.key, required this.hadethNumber});
  final int hadethNumber;

  @override
  State<HadethCard> createState() => _HadethCardState();
}

class _HadethCardState extends State<HadethCard> {
  String _fileContents = '';
  @override
  void initState() {
    loadAsset();
    super.initState();
  }

  Future<void> loadAsset() async {
    String fileText = await rootBundle.loadString(
      'assets/json/Hadeth/h${widget.hadethNumber}.txt',
    );
    setState(() {
      _fileContents = fileText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Container(
                  width: 92,
                  height: 92,

                  child: Image(
                    image: AssetImage(TImages.leftCornerBlack),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "${widget.hadethNumber} الحديث ",

                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.apply(color: TColors.textBlack),
                ),
                Container(
                  width: 92,
                  height: 92,

                  child: Image(image: AssetImage(TImages.rightCornerBlack)),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                width: 266,
                child: Text(
                  _fileContents,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.apply(color: TColors.textBlack),
                ),
              ),
            ),
          ),

          Image(image: AssetImage(TImages.footHadeth)),
        ],
      ),
    );
  }
}
