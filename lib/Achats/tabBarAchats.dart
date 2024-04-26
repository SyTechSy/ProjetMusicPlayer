import 'package:flutter/material.dart';

class PageAccueilAchats extends StatelessWidget {
  const PageAccueilAchats({super.key});

  String _getGreeting() {
    var hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) {
      return "Bonjour,";
    } else if (hour >= 12 && hour < 16) {
      return "Bon après-midi,";
    } else {
      return "Bonsoir,";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      _getGreeting(),
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 8,
                        //fontWeight: FontWeight.w500,
                        //letterSpacing: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Diakaridia Koureissi SY",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.9),
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                Text('data',style: TextStyle(fontSize: 8),)
              ],
            ),


          ],
        ),
      ),
    );
  }
}
