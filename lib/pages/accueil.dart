import 'package:flutter/material.dart';

import '../widgets/albums.dart';
import '../widgets/decouvrir.dart';
import '../widgets/musiques.dart';
import '../widgets/videoPlayer.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  /*String _getGreeting() {
    var hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) {
      return "Bonjour,";
    } else if (hour >= 12 && hour < 16) {
      return "Bon après-midi,";
    } else {
      return "Bonsoir,";
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        child: Scaffold(
          //backgroundColor: Color(0xFF303151).withOpacity(0.9),
          backgroundColor: const Color.fromARGB(118, 255, 255, 255),

          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: false,
                  //backgroundColor: Color(0xFF303151).withOpacity(1),
                  backgroundColor: Colors.white,
                  //expandedHeight: 0,

                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.sort_rounded,
                                      //color: Color(0xFF899CCF),
                                      color: Colors.orange,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Ma musique",
                                      style: TextStyle(
                                        //color: Colors.white.withOpacity(0.5),
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.search,
                                  //color: Color(0xFF899CCF),
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /*
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              _getGreeting(),
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 15,
                                //fontWeight: FontWeight.w500,
                                //letterSpacing: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "Diakaridia SY",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),

                          ],
                        ),

                        Padding(padding: EdgeInsets.only(top: 25, right: 10, bottom: 20),
                          child: Container(
                            height: 50,
                            width: 400,
                            decoration: BoxDecoration(
                                color: const Color(0xFF31314F),
                                borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.5), // Couleur de la bordure
                                width: 1, // Épaisseur de la bordure
                              ),
                            ),

                            // Recherche ..............
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 15),
                                  height: 50,
                                  width: 200,
                                  child: TextFormField(
                                    textCapitalization: TextCapitalization.words,
                                    decoration: InputDecoration(
                                      hintText: "Recherche un music...",
                                      hintStyle: TextStyle(
                                          color: Colors.white.withOpacity(0.5),
                                          letterSpacing: 0.5,
                                      ),
                                      border: InputBorder.none,
                                      // Pour le texte saisis
                                      labelStyle: TextStyle(color: Colors.white),
                                    ),
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Icon(
                                    Icons.search,
                                    size: 25,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        */
                      ],
                    ),
                  ),

                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(kToolbarHeight),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFFFFFFF).withOpacity(0.2),
                            Color(0xFFFFFFFF).withOpacity(0.5),
                            //Color(0xFF303151).withOpacity(1),
                          ], // Vos couleurs de dégradé
                        ),
                      ),
                      child: TabBar(
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        indicatorColor: Colors.orange,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.orange,
                        unselectedLabelColor: Colors.black87,
                        tabs: [
                          Tab(child: Text("Découvrir")),
                          Tab(child: Text("Chansons")),
                          Tab(child: Text("Albums/Mix.../Ep")),
                          Tab(child: Text("Clip")),
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                DecouvrirLists(),
                MusiqueLists(),
                AlbumsLists(),
                VideoPlayerPage(),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
