import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player_projet/model/album_model.dart';


class ListSinglePlaylistPage extends StatelessWidget {
  ListSinglePlaylistPage({super.key, required this.albums});

  //List<> playlists = Playlist.playlists;
  final AlbumsMixEp albums;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      for (final morceaux in albums.morceaux)
        GestureDetector(
          onTap: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => PagejouerLecteure()));
          },
          child: Container(
            margin: EdgeInsets.only(top: 0, right: 0, left: 0),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Transform.translate(
                        offset: Offset(-8, 0),
                        child: Container(
                          width: 8,
                          child: Text(
                            morceaux.idMorceauxAlbums,
                            style: TextStyle(
                                fontSize: 6
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Transform.translate(offset: Offset(-5, 0),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), // Rayon de bordure de 10 pixels
                          ),
                          clipBehavior: Clip.hardEdge, // Assure que l'image respecte les limites du rayon de bordure
                          child: Image.asset(
                            morceaux.photoMorceauxAlbums,
                            fit: BoxFit.cover, // Assure que l'image couvre entièrement le conteneur
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 5),
                InkWell(
                  //onTap: () {
                  //Navigator.push(context, "musicPage");
                  //},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        morceaux.nameArtisteMorceauxAlbums,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: Transform.translate(offset: Offset(0, -3),
                                  child: Row(
                                    children: [
                                      Text(
                                        morceaux.titreMorceauxAlbums,
                                        style: TextStyle(
                                            color: Colors.orange.withOpacity(0.7),
                                            fontSize: 8,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "-",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        morceaux.tempsMorceauxAlbums,
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8,
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
                                  Icon(
                                    Icons.remove_red_eye_outlined, size: 10,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    morceaux.vueMorceauxAlbums,
                                    style: TextStyle(
                                      fontSize: 6,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite_outline, size: 8,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    morceaux.lickeMorceauxAlbums,
                                    style: TextStyle(
                                        fontSize: 6
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mode_comment_outlined, size: 8,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    morceaux.commentMorceauxAlbums,
                                    style: TextStyle(
                                        fontSize: 6
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 5),
                              Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 5,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                morceaux.hoursMorceauxAlbums,
                                style: TextStyle(
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
                Spacer(),
                Stack(
                  children: [
                    Positioned(
                      child: Transform.translate(offset: Offset(10, 0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                'assets/icon/download-minimalistic-svgrepo-com.svg',
                                width: 13,
                                height: 13,
                                color: const Color(0xFF31314F)
                            ),
                            const SizedBox(width: 5),
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
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 0.3,
          color: Colors.black.withOpacity(0.2),
        ),
      ],
    );
  }
}
