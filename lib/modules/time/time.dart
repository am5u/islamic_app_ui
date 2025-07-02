import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/time/wedgits/azkar_grid_view.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});
  static const String routName = "/time";
  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(
      imageUrl: TImages.timebackground,
      child: Column(
        spacing: 20,
        children: [
          Image(image: AssetImage(TImages.headerLogo)),
          Container(
            width: 390,
            height: 310,
            decoration: BoxDecoration(
              color: TColors.primaryColor,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        //  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Color(0xff856B3F),
                        ),

                        child: Column(
                          children: [
                            Text(
                              "16 Jul,",
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .apply(color: TColors.textWhite),
                            ),
                            Text(
                              "2022",
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .apply(color: TColors.textWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Pray Time",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: TColors.textWhite,
                          ),
                        ),
                        Text(
                          "Today",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: TColors.textWhite,
                          ),
                        ),
                      ],
                    ),

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Color(0xff856B3F),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "16 Jul,",
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .apply(color: TColors.textWhite),
                            ),
                            Text(
                              "2022",
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .apply(color: TColors.textWhite),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 104,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder:
                        (_, index) => Container(
                          decoration: BoxDecoration(color: Color(0xff202020)),
                          child: Column(
                            children: [Text("Asr"), Text("4:35"), Text("pm")],
                          ),
                        ),
                    separatorBuilder: (_, index) => SizedBox(width: 8),
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),

          AzkarGridView(),
        ],
      ),
    );
  }
}
