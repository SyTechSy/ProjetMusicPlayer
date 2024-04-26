import 'package:flutter/material.dart';
import 'package:music_player_projet/pages/AppHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        //"/" : (context) => HomePage()
        "/" : (context) => const AppHomes()
        //"/" : (context) => const PagePlalistSection()
      },
    );
  }
}
