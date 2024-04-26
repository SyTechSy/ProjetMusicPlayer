import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageListPlayList extends StatelessWidget {
  PageListPlayList({super.key});

  final List listPlaylist = [
    {
      "photoPlaylist" : 'assets/drkeb.jpg',
      "namePlaylist" : 'Reality',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/lilZed_3.jpg',
      "namePlaylist" : 'Lil Zed Woo',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/abdoull.jpg',
      "namePlaylist" : 'Abdoul Prod Amour Sensible',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_2.jpeg',
      "namePlaylist" : 'Love',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_1.jpg',
      "namePlaylist" : 'Rap',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/drkeb.jpg',
      "namePlaylist" : 'Reality',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/lilZed_3.jpg',
      "namePlaylist" : 'Lil Zed Woo',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/abdoull.jpg',
      "namePlaylist" : 'Abdoul Prod Amour Sensible',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_2.jpeg',
      "namePlaylist" : 'Love',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_1.jpg',
      "namePlaylist" : 'Rap',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/drkeb.jpg',
      "namePlaylist" : 'Reality',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/lilZed_3.jpg',
      "namePlaylist" : 'Lil Zed Woo',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/abdoull.jpg',
      "namePlaylist" : 'Abdoul Prod Amour Sensible',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_2.jpeg',
      "namePlaylist" : 'Love',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_1.jpg',
      "namePlaylist" : 'Rap',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/drkeb.jpg',
      "namePlaylist" : 'Reality',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/lilZed_3.jpg',
      "namePlaylist" : 'Lil Zed Woo',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/abdoull.jpg',
      "namePlaylist" : 'Abdoul Prod Amour Sensible',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_2.jpeg',
      "namePlaylist" : 'Love',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_1.jpg',
      "namePlaylist" : 'Rap',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/drkeb.jpg',
      "namePlaylist" : 'Reality',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/lilZed_3.jpg',
      "namePlaylist" : 'Lil Zed Woo',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/abdoull.jpg',
      "namePlaylist" : 'Abdoul Prod Amour Sensible',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_2.jpeg',
      "namePlaylist" : 'Love',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_1.jpg',
      "namePlaylist" : 'Rap',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/drkeb.jpg',
      "namePlaylist" : 'Reality',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/lilZed_3.jpg',
      "namePlaylist" : 'Lil Zed Woo',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/abdoull.jpg',
      "namePlaylist" : 'Abdoul Prod Amour Sensible',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_2.jpeg',
      "namePlaylist" : 'Love',
      "nombreChansonPlaylist" : '0',
    },
    {
      "photoPlaylist" : 'assets/seydou_1.jpg',
      "namePlaylist" : 'Rap',
      "nombreChansonPlaylist" : '0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listPlaylist.map((post) {
        return Column(
          children: [
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 30, ),
              height: 0.2,
              color: Colors.black.withOpacity(0.1),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(
                            image: AssetImage(
                                post['photoPlaylist']
                            ),
                            fit: BoxFit.cover
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post['namePlaylist'],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              post['nombreChansonPlaylist'],
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 9,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(width: 3),
                            Text(
                              "Chansons",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 9,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                SvgPicture.asset(
                  'assets/icon/more-menu-vertical-line-svgrepo-com.svg',
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ],
        );
      }).toList()
    );
  }
}
