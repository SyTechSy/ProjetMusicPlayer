import 'package:flutter/material.dart';
import 'package:music_player_projet/model/album_model.dart';

import 'lecturePourAlbumMixEp/playlistPage.dart';


class AlbumsLists extends StatelessWidget {
  AlbumsLists({super.key});

  //List<AlbumsMixEp> albumsMixEp = [];
  List<AlbumsMixEp> albumsMixEp = AlbumsMixEp.albumsMixEp;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: albumsMixEp.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Transform.translate(offset: Offset(0, -25),
                child: Column(
                  children: [
                    //SizedBox(height: 10),
                    //for(int i = 1; i <= 2; i++)

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => PagePlalistSection(
                                albums: albumsMixEp[index]
                            ))
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 0, right: 0, left: 0),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        /*decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10)
            ),*/
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  child: Transform.translate(
                                      offset: const Offset(-10, 0),
                                      child: Text(
                                        albumsMixEp[index].idAlbums,
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  child: Transform.translate(offset: const Offset(-5, 0),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10), // Rayon de bordure de 10 pixels
                                      ),
                                      clipBehavior: Clip.hardEdge, // Assure que l'image respecte les limites du rayon de bordure
                                      child: Image.asset(
                                        albumsMixEp[index].photoAlbums,
                                        fit: BoxFit.cover, // Assure que l'image couvre entièrement le conteneur
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(width: 5),
                            InkWell(
                              //onTap: () {
                              //Navigator.push(context, "musicPage");
                              //},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        albumsMixEp[index].nameArtiste,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "-",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        albumsMixEp[index].NameAlbums,
                                        style: TextStyle(
                                            color: Colors.orange.withOpacity(0.7),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                albumsMixEp[index].nombreMorceauAlbum,
                                                style: TextStyle(
                                                  color: Colors.black.withOpacity(0.7),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(width: 6),
                                              Container(
                                                width: 10,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                    color: Colors.black12,
                                                    borderRadius: BorderRadius.circular(2)
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    albumsMixEp[index].typeMorceauAlbum,
                                                    style: TextStyle(
                                                      fontSize: 7,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 15),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.remove_red_eye_outlined, size: 10,
                                                color: Colors.red,
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                albumsMixEp[index].vuePost,
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.red,
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "-",
                                                style: TextStyle(
                                                  color: Colors.red.withOpacity(1),
                                                  fontSize: 5,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 5),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.favorite_outline, size: 9,
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                albumsMixEp[index].lickerPost,
                                                style: TextStyle(
                                                    fontSize: 8
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Text(
                                                "-",
                                                style: TextStyle(
                                                  color: Colors.red.withOpacity(1),
                                                  fontSize: 5,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 6),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.mode_comment_outlined, size: 8,
                                              ),
                                              SizedBox(width: 3),
                                              Text(
                                                albumsMixEp[index].commentPost,
                                                style: TextStyle(
                                                    fontSize: 8
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "-",
                                            style: TextStyle(
                                              color: Colors.red.withOpacity(1),
                                              fontSize: 5,
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            albumsMixEp[index].hoursPost,
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.black54
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Stack(
                              children: [
                                Positioned(
                                  child: Transform.translate(offset: Offset(5, 0),
                                    child: Row(
                                      children: [
                                        /*Icon(Icons.file_download_outlined,
                                  size: 20,
                                  color: Color(0xFF31314F)
                              ),
                              SizedBox(width: 5),*/
                                        Icon(Icons.more_vert,
                                            size: 20,
                                            color: Color(0xFF31314F)
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 0.3,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
    );
  }
}

