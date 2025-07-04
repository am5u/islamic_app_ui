import 'package:flutter/material.dart';

class PrayCard extends StatelessWidget {
  const PrayCard({
    super.key, required this.name, required this.time, required this.amPm,this.highlight=false
  });
 final  String name;
  final String time;
   final String amPm;
 final bool highlight;

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: highlight ? Colors.grey[800] : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(name, style: TextStyle(color: highlight ? Colors.white : Colors.black)),
          SizedBox(height: 8),
          Text(time, style: TextStyle(fontSize: 18, color: highlight ? Colors.white : Colors.black)),
          Text(amPm, style: TextStyle(fontSize: 12, color: highlight ? Colors.white : Colors.black)),
        ],
      ),
    );
  }
}