import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class SuraItemSlider extends StatelessWidget {
  const SuraItemSlider({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

width: 283,
      decoration: BoxDecoration(
        color: TColors.primaryColor,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text("Al-Anbiya",style: Theme.of(context).textTheme.titleLarge,),
             Text("الأنبياء",style: Theme.of(context).textTheme.titleLarge,),
                          Text("112 Verses",style: Theme.of(context).textTheme.bodyMedium,),
          
          
            ],
          ),
          Image(image: AssetImage(TImages.souraImge))
        ],
      ),
    );
  }
}
