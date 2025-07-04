import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class OnBoardingContainer extends StatelessWidget {
  final int boardingnum;
  final String title;
  final String description;
  const OnBoardingContainer({
    super.key,
    required this.boardingnum,
     required this.title,  this.description='',
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
       
        children: [
          Image(image: AssetImage(TImages.headerLogo)),
          Image(
            image: AssetImage(
              "assets/images/on_boarding/on_boarding$boardingnum.png",
            ),
          ),
          Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.apply(color: TColors.primaryColor),
          
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.titleLarge!.apply(color: TColors.primaryColor,) ,
            textAlign: TextAlign.center,
            )
        ],
      ),
    );
  }
}
