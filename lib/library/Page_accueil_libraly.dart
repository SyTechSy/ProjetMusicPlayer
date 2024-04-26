import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_projet/library/player_recenly.dart';

import 'elementLibraly.dart';

class PageAccueilLibraly extends StatelessWidget {
  const PageAccueilLibraly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(118, 255, 255, 255),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Listes de lecturePourAudio",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.60,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              //width: double.infinity,
              child: TextFormField(
                textInputAction: TextInputAction.search,
                autocorrect: true,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  hintText: "Recherche dans la bibliothèque...",
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  isDense: true,
                  hintStyle: TextStyle(
                    letterSpacing: 0.5,
                    fontSize: 13,
                    color: Colors.black .withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.black.withOpacity(0.5)
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ),

            PagePlayerRecenly(),

            //SizedBox(height: 2),
            Container(
              height: 60,
              //color: Colors.red,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.3),
                        border: Border.all(
                          color: Colors.orange,
                          width: 1
                        )
                    ),
                    child: Icon(Icons.add, color: Colors.orange, size: 20,),
                  ),

                  SizedBox(width: 10),
                  Text(
                    "Nouvelle playlist",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 12,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: PageElementLibraly(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

