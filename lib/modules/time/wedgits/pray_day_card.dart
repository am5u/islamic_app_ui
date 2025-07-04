import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/modules/time/wedgits/pray_card.dart';

class TPrayDayCard extends StatefulWidget {
  const TPrayDayCard({super.key});

  @override
  State<TPrayDayCard> createState() => _TPrayDayCardState();
}

class _TPrayDayCardState extends State<TPrayDayCard> {
  bool isMuted = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: TColors.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Top Dates
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xff856B3F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "16 Jul,\n2024",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Pray Time",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Tuesday", style: TextStyle(fontSize: 16)),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xff856B3F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "09 Muh,\n1446",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Prayer Times
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PrayCard(name: "Sunrise", time: "05:04", amPm: "AM"),
                  PrayCard(name: "Dhuhr", time: "01:01", amPm: "PM"),
                  PrayCard(
                    name: "ASR",
                    time: "04:38",
                    amPm: "PM",
                    highlight: true,
                  ),
                  PrayCard(name: "Maghrib", time: "07:57", amPm: "PM"),
                  PrayCard(name: "Isha", time: "09:00", amPm: "PM"),
                ],
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Next Pray - 02:32",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),

                IconButton(
                  onPressed: () {
                    setState(() {
                      isMuted = !isMuted;
                    });
                  },
                  icon: Icon(
                    isMuted ? Icons.volume_up_outlined : Icons.volume_off,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
