import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class RadioCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

width: double.infinity,

      decoration: BoxDecoration(
        color: TColors.primaryColor,
        borderRadius: BorderRadius.circular(20),

      ),
       child:
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
                 Text("Radio Ibrahim Al-Akdar",style: Theme.of(context).textTheme.titleLarge,),
              Stack(
                children: [
                          
                          Container(width: double.infinity, child: Image(image: AssetImage(TImages.footHadeth),fit: BoxFit.contain,)),
                          
                          Positioned(
                            bottom: 50,
                            left: 0,
                            right: 0,
                            child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                                   
                                            children: [
                                              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded,size: 44,)),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_rounded,size: 44,)),
                            
                            
                                            ],
                            ),
                          ),
                ],
              ),
            ],
          ),
        
      
    );
  }
}
