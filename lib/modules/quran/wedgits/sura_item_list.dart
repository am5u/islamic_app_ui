import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class SuraItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(TImages.suraIcon))),
          child: Center(child: Text("1",style: Theme.of(context).textTheme.bodyLarge!.apply(color:TColors.textWhite),)),
       
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Al-Fatiha",style:Theme.of(context).textTheme.titleLarge!.apply(color: TColors.textWhite),),
              Text("7 Ayah",style:Theme.of(context).textTheme.titleSmall!.apply(color:TColors.textWhite)),
            ],
          
          ),
        ),
        Spacer(),
        Text("الفاتحه",style:Theme.of(context).textTheme.titleLarge!.apply(color: TColors.textWhite)),
      
      
      
      
      
      
        
      ]),
    );
  }
}
