import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/hadeth/hadeth_details.dart';

class HadethCard extends StatefulWidget {
  const HadethCard({super.key, required this.hadethNumber});
  final int hadethNumber;

  @override
  State<HadethCard> createState() => _HadethCardState();
}

class _HadethCardState extends State<HadethCard> {
  String _header = '';
  String _body = '';
  @override
  void initState() {
    loadAsset();
    super.initState();
  }

  Future<void> loadAsset() async {
    String fileText = await rootBundle.loadString(
      'assets/json/Hadeth/h${widget.hadethNumber}.txt',
    );
    final lines = fileText.split('\n');
    setState(() {
      _header = lines.isNotEmpty ? lines.first : '';
      _body = lines.length > 1 ? lines.sublist(1).join('\n') : '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => HadethDetails(
                    hadethNumber: widget.hadethNumber,
                    content: '$_header\n$_body',
                  ),
            ),
          );
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 92,
                    height: 92,

                    child: Image(
                      image: AssetImage(TImages.leftCornerBlack),
                      fit: BoxFit.cover,
                    ),
                  ),
                Text(
                _header,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.apply(color: TColors.textBlack),
              ),
                  SizedBox(
                    width: 92,
                    height: 92,

                    child: Image(image: AssetImage(TImages.rightCornerBlack)),
                  ),
                ],
              ),
            ),
            // Header text
         
            // Body in scroll view
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: SizedBox(
                  width: 266,
                  child: Text(
                    _body,
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge!.apply(color: TColors.textBlack),
                  ),
                ),
              ),
            ),

            // Text(
            Image(image: AssetImage(TImages.footHadeth)),
          ],
        ),
      ),
    );
  }
}
