import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class HadethDetails extends StatefulWidget {
  const HadethDetails({super.key, required this.content, required this.hadethNumber,});
  static const String routName = "/sura";
  final String content;
  final int hadethNumber;

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(32, 32, 32, 1),
        title: Center(
          child: Text(
             "Hadeth ${widget.hadethNumber}",
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
                   " ${widget.hadethNumber} الحديث",
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
        child: Text(
          widget.content,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium!.apply(color: TColors.primaryColor),
        ),
      ),
    ),
    SizedBox(height: 10,),
    Container(
        width: double.infinity,
        height: 112,
        color: Colors.black,
        child: Image(image: AssetImage(TImages.footer))),
        ],
        
      ),
    );
  }
}
