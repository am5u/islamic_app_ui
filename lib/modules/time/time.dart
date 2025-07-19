import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/time/wedgits/azkar_grid_view.dart';
import 'package:islamicapp_ui/modules/time/wedgits/pray_day_card.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});
  static const String routName = "/time";
  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(
      imageUrl: TImages.timebackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            Image(image: AssetImage(TImages.headerLogo)),
            SizedBox(height: 20),

            TPrayDayCard(),
            SizedBox(height: 20),

            AzkarGridView(),
          ],
        ),
      ),
    );
  }
}

