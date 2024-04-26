import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player_projet/model/son_model.dart';

import 'jouer_lecture.dart';

class PageModeLecture extends StatelessWidget {
   PageModeLecture({super.key, required this.musique});
  final ListMusic musique;
  @override
  Widget build(BuildContext context) {
    //var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SvgPicture.asset(
                      'assets/icon/arrow-left-5-svgrepo-com.svg',
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icon/favorite-svgrepo-com.svg',
                        width: 15,
                        height: 15,
                      ),
                      SizedBox(width: 15),
                      SvgPicture.asset(
                        'assets/icon/more-vertical-svgrepo-com.svg',
                        width: 15,
                        height: 15,
                        color: Colors.black,

                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            PagejouerLecteure(musique: musique)

          ],
        ),
      ),
    );
  }
}