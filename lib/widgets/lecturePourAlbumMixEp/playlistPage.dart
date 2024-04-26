import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player_projet/model/playlist_model.dart';

import '../../model/album_model.dart';
import 'listSinglePlaylistPage.dart';

class PagePlalistSection extends StatelessWidget {
  const PagePlalistSection({super.key, required this.albums});

  final AlbumsMixEp albums;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: SvgPicture.asset(
                      'assets/icon/arrow-left-5-svgrepo-com.svg',
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),

                Text(
                  albums.nameTypeMorceauAlbum,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: SvgPicture.asset(
                    'assets/icon/more-vertical-svgrepo-com.svg',
                    width: 15,
                    height: 15,
                    color: Colors.black,

                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    albums.photoAlbums,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(right: 0, top: 10,
                  child: Transform.translate(
                    offset: const Offset(45, 0),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.red,
                              size: 22,
                            ),
                            Text(
                              albums.vuePost,
                              style: TextStyle(
                                  fontSize: 6
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/favorite-svgrepo-com.svg',
                              width: 20,
                              height: 20,
                               color: Colors.orange,
                            ),
                            Text(
                              albums.lickerPost,
                              style: TextStyle(
                                fontSize: 10
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: [
                            const Icon(
                              Icons.comment_bank_outlined,
                              color: Colors.black,
                              size: 22,
                            ),
                            Text(
                              albums.commentPost,
                              style: TextStyle(
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),

                        const SizedBox(height: 20),
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/sharp-arrow-right-svgrepo-com.svg',
                              width: 22,
                              height: 22,
                              color: Colors.black,
                            ),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Column(
             children: [
               Text(
                 albums.nameArtiste,
                 style: const TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               Text(
                   albums.NameAlbums,
                 style: const TextStyle(
                   fontSize: 10,
                   fontWeight: FontWeight.w400,
                   color: Colors.orange
                 ),
               ),
             ],
           ),
            SizedBox(height: 5),
            Container(
              //color: Colors.red,
              padding: EdgeInsets.only(bottom: 3, top: 3 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      albums.nombreMorceauAlbum,
                      style: TextStyle(
                        fontSize: 10
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/download-minimalistic-svgrepo-com.svg',
                              width: 15,
                              height: 15,
                              color: Colors.black,
                            ),
                            Text(
                              'Télécharger',
                              style: TextStyle(
                                fontSize: 6
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [

                            Icon(
                              Icons.play_circle_outline,
                              size: 15,
                            ),
                            Text(
                              'Lire touts',
                              style: TextStyle(
                                  fontSize: 6
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [

                            //assets/icon/favorite-svgrepo-com (1).svg
                            SvgPicture.asset(
                              'assets/icon/favorite-svgrepo-com (1).svg',
                              width: 15,
                              height: 15,
                              color: Colors.black,
                            ),
                            Text(
                              'Favorite',
                              style: TextStyle(
                                  fontSize: 6
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                  child: ListSinglePlaylistPage(albums: albums)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
