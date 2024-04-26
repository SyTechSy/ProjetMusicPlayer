import 'package:flutter/material.dart';

import 'listPlaylist.dart';

class PageElementLibraly extends StatefulWidget {
  const PageElementLibraly({super.key});

  @override
  State<PageElementLibraly> createState() => _PageElementLibralyState();
}

class _PageElementLibralyState extends State<PageElementLibraly> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            //SizedBox(height: 5),
            /*Container(
              margin: EdgeInsets.only(left: 30, ),
              height: 0.2,
              color: Colors.black.withOpacity(0.1),
            ),
            SizedBox(height: 5),*/
            Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Color(0xFFC78383),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.favorite_border, size: 15, color: Colors.white.withOpacity(0.8),),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chansons préférées",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      "0 Chansons",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 9,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 30, ),
              height: 0.2,
              color: Colors.black.withOpacity(0.1),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Color(0xFF264D83),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.alarm, size: 15, color: Colors.white.withOpacity(0.8),),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dernier joué",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      "15 Chansons",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 9,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ],
            ),

            PageListPlayList()
          ],
        ),
      ),
    );
  }
}
