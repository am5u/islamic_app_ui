import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class RadioCard extends StatefulWidget {
  const RadioCard({super.key});

  @override
  State<RadioCard> createState() => _RadioCardState();
}

class _RadioCardState extends State<RadioCard> {
  bool isPlay = false;
  bool isMute = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        height: 140,

      decoration: BoxDecoration(
        color: TColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text(
            "Radio Ibrahim Al-Akdar",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                 
                  child: Image(
                    image: AssetImage(isPlay==false ? TImages.footHadeth : TImages.wave),
                    fit: BoxFit.contain,
                  ),
                ),
            
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
            
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isPlay = !isPlay;
                          });
                        },
                        icon: Icon(
                          isPlay==false ? Icons.play_arrow_rounded : Icons.pause,
                          size: 44,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isMute = !isMute;
                          });
                        },
                        icon: Icon(isMute==false?Icons.volume_up_rounded:Icons.volume_off, size: 44),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
