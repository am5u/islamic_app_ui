import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class QuranHeader extends StatelessWidget {
  const QuranHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Image(image: AssetImage(TImages.headerLogo)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            cursorColor: TColors.primaryColor,
            
              style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white),
            decoration: InputDecoration(
              labelText: 'Sura Name',
              
              
              
              labelStyle: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white),
              prefixIcon: Container(width: 28,height: 28,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(TImages.quranIcon))),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor)
                
              ),
              errorBorder: 
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor)
                
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor)
                
              ),
              enabledBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor)
                
              ),
    
            ),
              
          
          ),
        ),
    
      
    
    
      ],
    );
  }
}
