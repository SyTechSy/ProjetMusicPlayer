import 'package:flutter/material.dart';
import 'package:music_player_projet/library/recenlyPhoto.dart';

class PagePlayerRecenly extends StatefulWidget {
  const PagePlayerRecenly({super.key});

  @override
  State<PagePlayerRecenly> createState() => _PagePlayerRecenlyState();
}

class _PagePlayerRecenlyState extends State<PagePlayerRecenly> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Joué récemment",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),
              ),
              Row(
                children: [
                  Text(
                      "Voir plus",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.8)
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      )
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        PagerecenlyMusic()

      ],
    );
  }
}
