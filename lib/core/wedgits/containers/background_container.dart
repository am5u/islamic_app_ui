import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class TBackgroundContainer extends StatelessWidget {
  const TBackgroundContainer({super.key, required this.imageUrl, this.child});
  final String imageUrl;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
