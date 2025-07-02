import 'package:flutter/material.dart';
import 'package:islamicapp_ui/modules/radio/wedgits/radio_card.dart';
     class RabioCtagoryTab extends StatelessWidget{
  const RabioCtagoryTab({super.key});

       @override
       Widget build(BuildContext context) {
       return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder:(_,index)=>  RadioCard(), separatorBuilder:(_,index)=> SizedBox(height: 10,), itemCount: 4),
      ),
    );
       }


     }