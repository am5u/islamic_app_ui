import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({
    super.key, required this.azkarNumber,
  });
final int azkarNumber ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: TColors.primaryColor, width: 2),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/azkar/Illustration-${azkarNumber+1}.png',
                ),
              ),
              
            ),
          ),
        ),
        Positioned( bottom:0,left:0,right: 0,child:  Text("Evening Azkar",style: Theme.of(context).textTheme.titleMedium!.apply(color: TColors.textWhite),textAlign: TextAlign.center,)),
      ],
    );
  }
}
