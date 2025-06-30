import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';
import 'package:islamicapp_ui/modules/hadeth/wedgits/hadeth_card.dart';

class HadethListSlider extends StatelessWidget {
  const HadethListSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
             
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
        
        return HadethCard(content: "عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ). رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه.",hadethNumber: "الحديث الاول ",);
      }, separatorBuilder: (_,index)=>SizedBox(width: 20,), itemCount: 5),
    );
  }
}

