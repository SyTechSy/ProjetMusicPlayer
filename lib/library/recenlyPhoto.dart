import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagerecenlyMusic extends StatelessWidget {
  PagerecenlyMusic({super.key});

  final List listPlayerRecenly = [
    {
      "photoMusic": 'assets/abdoull.jpg',
      "nameArtiste": 'Abdoul Prod',
      "NameMusic": 'Femme de valeur',
    },
    {
      "photoMusic": 'assets/lilZed_1.jpg',
      "nameArtiste": 'Lil Zed',
      "NameMusic": 'COUPLET Kele',
    },
    {
      "photoMusic": 'assets/drkeb.jpg',
      "nameArtiste": 'Dr Keb',
      "NameMusic": 'Reality',
    },
    {
      "photoMusic": 'assets/seydou_1.jpg',
      "nameArtiste": 'Seydou Che',
      "NameMusic": 'Kanou guelema',
    },
    {
      "photoMusic": 'assets/lilZed_3.jpg',
      "nameArtiste": 'Lil Zed',
      "NameMusic": 'Adam & Eva',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: listPlayerRecenly.map((post) {
        return Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      image: DecorationImage(
                          image: AssetImage(
                              post['photoMusic']
                          ),
                          fit: BoxFit.cover
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  Positioned(
                    top: 4,
                    right: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 10,
                            )
                          ]
                      ),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            //color: Colors.red,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.6),
                                  blurRadius: 10,
                                )
                              ]
                          ),
                          //color: Colors.black.withOpacity(0.4),
                          padding: EdgeInsets.all(2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Text(
                                  post['nameArtiste'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Text(
                                  post['NameMusic'],
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 7
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 10,
                            )
                          ]
                      ),
                      child: Icon(
                        Icons.play_circle,
                        color: Colors.orange,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),
      ),
    );
  }
}
