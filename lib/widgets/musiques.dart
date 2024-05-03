import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player_projet/model/son_model.dart';
import 'lecturePourAudio//mode_lecture.dart';

class MusiqueLists extends StatelessWidget {
  MusiqueLists({super.key});

  //List<Playlist> playlists = Playlist.playlists;
  List<ListMusic> listMusic = ListMusic.listMusic;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listMusic.length,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Transform.translate(
              offset: const Offset(0, -25),
              child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => PageModeLecture(
                            musique: listMusic[index]
                        ))
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              child: Transform.translate(
                                offset: const Offset(-10, 0),
                                child: const Icon(
                                  Icons.play_arrow,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Positioned(
                              child: Transform.translate(offset: const Offset(-5, 0),
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10), // Rayon de bordure de 10 pixels
                                  ),
                                  clipBehavior: Clip.hardEdge, // Assure que l'image respecte les limites du rayon de bordure
                                  child: Image.asset(
                                    listMusic[index].photoMusic,
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
                              Text(
                                listMusic[index].nameArtiste,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Transform.translate(offset: const Offset(0, -3),
                                          child: Row(
                                            children: [
                                              Text(
                                                listMusic[index].titreMusic,
                                                style: TextStyle(
                                                  color: Colors.orange.withOpacity(0.7),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                "-",
                                                style: TextStyle(
                                                  color: Colors.black.withOpacity(0.5),
                                                  fontSize: 15,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                listMusic[index].tempsMusic,
                                                style: TextStyle(
                                                    color: Colors.black.withOpacity(0.5),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 11
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.remove_red_eye_outlined, size: 10,
                                            color: Colors.red,
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            listMusic[index].vuePost,
                                            style: const TextStyle(
                                              fontSize: 6,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 5),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.favorite_outline, size: 8,
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            listMusic[index].lickerPost,
                                            style: const TextStyle(
                                                fontSize: 6
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 5),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.mode_comment_outlined, size: 8,
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            listMusic[index].commentPost,
                                            style: const TextStyle(
                                                fontSize: 6
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "-",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 5,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        listMusic[index].hoursPost,
                                        style: const TextStyle(
                                            fontSize: 6,
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
                        const Spacer(),
                        Stack(
                          children: [
                            Positioned(
                              child: Transform.translate(offset: const Offset(12, 0),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icon/download-minimalistic-svgrepo-com.svg',
                                        width: 13,
                                        height: 13,
                                        color: const Color(0xFF31314F)
                                    ),
                                    SizedBox(width: 2),
                                    SvgPicture.asset(
                                        'assets/icon/more-menu-vertical-line-svgrepo-com.svg',
                                        width: 25,
                                        height: 25,
                                        color: const Color(0xFF31314F)
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
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 0.3,
                  color: Colors.black.withOpacity(0.2),
                ),
              ],
            ),
            ),
          ],
        );
      },
    );
  }

}


