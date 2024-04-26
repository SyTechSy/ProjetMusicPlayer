import 'package:flutter/material.dart';

class DecouvrirLists extends StatelessWidget {
  DecouvrirLists({super.key});

  final List postItems = [
    {
      "pseudo": 'Abdoul Prod',
      "photo": 'assets/abdoull.jpg',
      "photoProfil": 'assets/abdoull.jpg',
      "description": 'Une petite description pour la publication abd Une petite description pour le publication abd',
      "liker": '5.3 M',
      "noLiker": '3.3 k',
      "HoursPost" : 'Il y\'a 1 j',
      "CommentPost" : "365.3 k",
      "PartagePost" : "233.1 k",

    },
    {
      "pseudo": 'Dr Keb',
      "photo": 'assets/abdoull-2.jpg.jpeg',
      "photoProfil": 'assets/abdoull-2.jpg.jpeg',
      "description": 'Une petite description pour la publication Dr Keb',
      "liker": '111.2 k',
      "noLiker": '1.2 k',
      "HoursPost" : "Il y'a 1 minutes",
      "CommentPost" : "44.1 k",
      "PartagePost" : "100",

    },
    {
      "pseudo": 'Seydou Che',
      "photo": 'assets/abdoull.jpg',
      "photoProfil": 'assets/abdoull.jpg',
      "description": 'Une petite description pour la publication Seydou Che',
      "liker": '88.1 k',
      "noLiker": '100',
      "HoursPost" : "Il y'a 2 minutes",
      "CommentPost" : "1.1 k",
      "PartagePost" : "10",
    },
    {
      "pseudo": 'Abba Wayne',
      "photo": 'assets/abdoull-2.jpg.jpeg',
      "photoProfil": 'assets/abdoull-2.jpg.jpeg',
      "description": 'Une petite description pour la publication Abba Wayne',
      "liker": '3.3 k',
      "noLiker": '0 k',
      "HoursPost" : "Il y'a 3 minutes",
      "CommentPost" : "99",
      "PartagePost" : "3.3 k",
    },
    {
      "pseudo": 'Abba Wayne',
      "photo": 'assets/abdoull.jpg',
      "photoProfil": 'assets/abdoull.jpg',
      "description": 'Une petite description pour la publication Abba Wayne',
      "liker": '229',
      "noLiker": '1.1 k',
      "HoursPost" : "Il y'a 4 minutes",
      "CommentPost" : "17",
      "PartagePost" : "6",
    },
    {
      "pseudo": 'Abba Wayne',
      "photo": 'assets/abdoull-2.jpg.jpeg',
      "photoProfil": 'assets/abdoull-2.jpg.jpeg',
      "description": 'Une petite description pour la publication Abba Wayne',
      "liker": '56',
      "noLiker": '0',
      "HoursPost" : "Il y'a 5 minutes",
      "CommentPost" : "4",
      "PartagePost" : "14",
    },
    {
      "pseudo": 'Abba Wayne',
      "photo": 'assets/abdoull.jpg',
      "photoProfil": 'assets.abdoull.jpg',
      "description": 'Une petite description pour la publication Abba Wayne',
      "liker": '1k',
      "noLiker": '2',
      "HoursPost" : "Il y'a 1 heures",
      "CommentPost" : "78",
      "PartagePost" : "500",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: postItems.map((post) {
            return Column(
              children: [
                // profil - name - description
                Column(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      //margin: EdgeInsets.only(top: 0),
                      padding: EdgeInsets.only(top: 10, left: 8, bottom: 10),
                      //height: 100,
                      //color: Color(0xFF303151).withOpacity(1),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/abdoull.jpg',
                                    ),
                                    maxRadius: 20.0,
                                  ),
                                  const SizedBox(width: 8.0),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        post['pseudo'], style: const TextStyle(
                                          fontSize: 16,
                                          //color: Color(0xFFD8D8D8),
                                        color: Colors.black,
                                        ),
                                      ),
                                       Text(
                                        post['HoursPost'],
                                        style: const TextStyle(
                                          fontSize: 10,
                                          //color: Color(0xFFD8D8D8),
                                        color: Colors.black54
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                      Icons.more_vert,
                                    color: Colors.black,
                                  ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: AlignmentDirectional.topStart,
                              child: Text(
                                post['description'],
                                style: TextStyle(
                                    fontSize: 12,
                                    //color: Color(0xFFFFFFFF).withOpacity(0.8),
                                    color: Colors.black,
                                  letterSpacing: 0.50
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // photo poster
                Container(
                  //margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(post['photo']),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                // Licker - commente
                Container(
                  //padding: EdgeInsets.only(left: 5),
                  height: 60,
                  padding: EdgeInsets.only(top: 5,left: 10, right: 10),
                  //color: Color(0xFF303151).withOpacity(1),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            post['liker'],
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'J\'aime',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 1,
                            height: 13,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 5),
                          Text(
                            post['CommentPost'],
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Commentaires',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            width: 1,
                            height: 13,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 5),
                          Text(
                            post['PartagePost'],
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Partages',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black.withOpacity(0.8)
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.thumb_up_off_alt,
                                  size: 18,
                                  color: Colors.black.withOpacity(0.8),
                                ),

                                SizedBox(width: 20),
                                Icon(
                                  Icons.mode_comment_outlined,
                                  size: 15,
                                  color: Colors.black.withOpacity(0.8),
                                ),

                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.share_outlined,
                                size: 15,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  height: 0.3,
                  color: Colors.black.withOpacity(0.4),
                ),
              ],
            );
          }).toList(),
      ),
    );
  }
}
