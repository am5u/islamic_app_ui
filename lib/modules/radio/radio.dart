import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/core/wedgits/containers/background_container.dart';
import 'package:islamicapp_ui/modules/radio/wedgits/radio_catagory_tab.dart';
import 'package:islamicapp_ui/modules/radio/wedgits/tabar.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});
  static const String routName = "/radio";
  @override
  Widget build(BuildContext context) {
    return TBackgroundContainer(
      imageUrl: TImages.radiobackground,
      child: Column(
       
        children: [
          Image(image: AssetImage(TImages.headerLogo)),
         
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Colors.amber[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        tabs: [Tab(text: 'Radio'), Tab(text: 'Reciters')],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: TabBarView(
                      children: [RabioCtagoryTab(), RabioCtagoryTab()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
