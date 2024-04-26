//import 'package:flutter/material.dart';
//import 'package:lecture_music/widgets/albums.dart';
//import 'package:lecture_music/widgets/musiques.dart';
//import 'package:lecture_music/widgets/musiques.dart';


/*class HomePage extends StatelessWidget {
  // const HomePage({super.key});

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
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF303151).withOpacity(0.6),
              Color(0xFF303151).withOpacity(0.9),
            ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.sort_rounded,
                                color: Color(0xFF899CCF),
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "Name music",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20,
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
                            Icons.more_vert,
                            color: Color(0xFF899CCF),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Text(
                        _getGreeting(),
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 17,
                            //fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Diakaridia SY",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(top: 15, right: 10, bottom: 20),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color(0xFF31314F),
                          borderRadius: BorderRadius.circular(8)
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
                                  letterSpacing: 0.5
                                ),

                                //border: InputBorder.none,
                                // Pour le texte saisi
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              style: TextStyle(color: Colors.white, ),
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

                  TabBar(
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 16),
                    indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 3,
                          color: Color(0xFF899CCF),
                        ),
                      ),
                    ),
                    tabs: [

                      Tab(
                        text: "Musiques",
                      ),
                      Tab(
                        text: "Albums",
                      ),
                      Tab(
                        text: "Favourites",
                      ),
                      Tab(
                        text: "Trending",
                      ),
                      Tab(
                        text: "Collection",
                      ),
                      Tab(
                        text: "New",
                      ),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: TabBarView(
                    children: [
                      MusiqueLists(),
                      AlbumsLists(),
                      Container(color: Colors.cyan),
                      Container(color: Colors.orange),
                      Container(color: Colors.yellow),
                      Container(color: Colors.green),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/