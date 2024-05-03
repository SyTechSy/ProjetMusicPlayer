import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/decouvrir_model.dart';

class DecouvrirLists extends StatelessWidget {
  DecouvrirLists({super.key});

  List<ListPubDecouvrir> listPubDecouvrir = ListPubDecouvrir.listPubDecouvrir;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listPubDecouvrir.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Transform.translate(
                  offset: Offset(0, -25),
                child: Column(
                  children: [
                    // profil - name - description
                    Column(
                      children: [
                        Container(
                          //margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          //margin: EdgeInsets.only(top: 0),
                          padding: EdgeInsets.only(top: 2, left: 8, bottom: 10),
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
                                            listPubDecouvrir[index].nameArtiste,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              //color: Color(0xFFD8D8D8),
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            listPubDecouvrir[index].datePost,
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
                                  listPubDecouvrir[index].description,
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
                            image: AssetImage(
                                listPubDecouvrir[index].photoPost
                            ),
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
                                listPubDecouvrir[index].likePost,
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
                                listPubDecouvrir[index].commentPost,
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
                                listPubDecouvrir[index].sendPost,
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
                                    SvgPicture.asset(
                                      'assets/icon/thumbs-up.svg', 
                                      width: 18,
                                      height: 18,
                                      color: Colors.red,
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
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      height: 0.3,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ],
                ),
              )
            ],
          );
        }
    );
  }
}
