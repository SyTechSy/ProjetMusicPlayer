import 'package:flutter/material.dart';

import '../Achats/accueil_achats.dart';
import '../library/Page_accueil_libraly.dart';
import 'accueil.dart';
//import 'package:lecture_music/widgets/musiques.dart';

class AppHomes extends StatefulWidget {
  const AppHomes({super.key});

  @override
  State<AppHomes> createState() => _AppHomesState();
}

class _AppHomesState extends State<AppHomes> {
  int _currentIndex = 0;
  final screens = [
    //MusiqueLists(),
    AccueilPage(),
    PageAccueilLibraly(),
    PageAccueilAchats(),
    Center(child: Text("téléchargement", style: TextStyle(fontSize: 30))),
    Center(child: Text("profil", style: TextStyle(fontSize: 30))),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade700,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [

        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
        BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Bibliothèque'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Achats'),
        BottomNavigationBarItem(icon: Icon(Icons.cloud_download), label: 'Télécharger'),
        BottomNavigationBarItem(icon: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/abdoull.jpg',
          ),
          maxRadius: 12,
        ), label: 'Profil'),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    ),
  );
}

