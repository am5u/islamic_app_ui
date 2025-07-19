import 'package:flutter/material.dart';
import 'package:islamicapp_ui/modules/time/wedgits/azkar_card.dart';

class AzkarGridView extends StatelessWidget {
  const AzkarGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 240,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (_, index) {
          return AzkarCard(azkarNumber: index+1,);
        },
      ),
    );
  }
}
