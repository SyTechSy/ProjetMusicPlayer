import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'album_vente.dart';
import 'chansons_vente.dart';
import 'clip_vente.dart';
import 'livre_vente.dart';

class PageAccueilAchats extends StatefulWidget {
  const PageAccueilAchats({super.key});

  @override
  State<PageAccueilAchats> createState() => _PageAccueilAchatsState();
}

class _PageAccueilAchatsState extends State<PageAccueilAchats> {
  List<String> items = ["Chansons", "Albums", "Clips", "Livres"];

  List<List<String>> animatedTexts = [
    [
      "Recherche la Chansons Dr keb.",
      "Recherche la Chansons Sidiki Diabate.",
      "Recherche la Chansons Adboul Prod."
    ],
    [
      "Recherche l'Album Mixpate ou Ep",
      "Recherche l'Album Mixpate ou Ep",
    ],
    [
      "Recherche le Clip Dr keb",
      "Recherche le Clip Sidiki Diabate",
      "Recherche le Clip Adboul Prod"
    ],
    [
      "Recherche le Livre Dr keb",
      "Recherche le Livre Sidiki Diabate",
      "Recherche le Livre Adboul Prod"
    ]
  ];

  List screens = [
    PageChansonsVente(),
    PageAlbumsVente(),
    PageClipsVente(),
    PageLivresVente(),
  ];

  int current = 0;

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
    return Column(
        children: [
          SizedBox(height: 45),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      _getGreeting(),
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
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
                Text(
                  'Mes Achats',
                  style: TextStyle(fontSize: 12, color: Colors.orange),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.orange.withOpacity(0.3)
                                  : Colors.black.withOpacity(0),
                              borderRadius: BorderRadius.circular(15),
                              border: current == index
                                  ? Border.all(color: Colors.orange, width: 1)
                                  : Border.all(
                                  color: Colors.black.withOpacity(0.6),
                                  width: 1)),
                          child: Center(
                            child: Text(
                              items[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: current == index
                                      ? Colors.orange
                                      : Colors.black.withOpacity(0.5)),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: current == index,
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.orange),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            height: 0.3,
            color: Colors.black.withOpacity(0.5),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.black.withOpacity(1),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        //margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 50,
                        width: 250,
                        child: Stack(
                          //alignment: Alignment.,
                          children: [
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              left: animatedTexts[current].isEmpty ? 0.0 : 18.0,
                              top: animatedTexts[current].isEmpty ? 0.0 : 10.0,
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 200),
                                opacity: animatedTexts[current].isEmpty ? 0.0 : 0.6,
                                child: SizedBox(
                                  width: animatedTexts[current].isEmpty ? 0.0 : 250.0,
                                  child: AnimatedTextKit(
                                    animatedTexts: animatedTexts[current]
                                        .map((text) => TypewriterAnimatedText(
                                        text,
                                        textStyle: TextStyle(
                                          fontSize: 11.0,
                                        ),
                                        speed: const Duration(milliseconds: 100),
                                    ))
                                        .toList(),
                                    repeatForever: true,
                                    onTap: () {
                                      print("Champs recherche est cliquer");
                                    },
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 3),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_mu.png',
                      width: 35,
                      height: 35,
                    ),
                    SizedBox(width: 2),
                    Text(
                      // Condition pour modifier le texte en fonction de l'index sélectionné
                      current == 1 // Si l'index actuel est 1 (Albums)
                          ? 'Écoutons des Albums ensemble.'
                          : current == 2 || current == 3 // Si l'index actuel est 2 (Clips) ou 3 (Livres)
                          ? 'Écoutons des ${items[current]} ensemble.'
                          : 'Écoutons de la musique ensemble.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        //fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.sort, size: 20,)
              ),
            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              child: screens[current],
            ),
          ),
        ],
    );
  }
}
