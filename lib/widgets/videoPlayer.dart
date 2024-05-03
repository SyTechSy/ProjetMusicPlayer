import 'package:flutter/material.dart';
import 'package:music_player_projet/widgets/video_data.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          //SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(top: 10),
            //width: double.infinity,
            height: 220.0,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(video_data[0]
                ['Clip_img']),
                fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(height: 5),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        // Pour le nom d'artiste
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            video_data[0]['nomArtist'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        // C'est pour le petit tiret
                        SizedBox(width: 4),
                        Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 10,
                          ),
                        ),
                        // C'est pour le titre de clip
                        SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            video_data[0]['titreClip'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.orange.withOpacity(0.7),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),

                        Stack(
                          children: [
                            Positioned(
                              child: Transform.translate(offset: Offset(-8, 2),
                                child: Row(
                                  children: [
                                    Icon(Icons.more_vert,
                                        size: 16,
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
                  // Pour l'heure de disponibilité

                ],
              ),

              SizedBox(height: 1),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          video_data[0]['view_count'],
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'vues',
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),

                      SizedBox(width: 4),
                      Text(
                        "-",
                        style: TextStyle(
                          color: Colors.orange.withOpacity(0.5),
                          fontSize: 8,
                        ),
                      ),
                      // C'est pour le titre de clip
                      SizedBox(width: 4),

                      Row(
                        children: [
                            Text(
                              video_data[0]['like_count'],
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          SizedBox(width: 5),
                          Text(
                            'j\'aime',
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(width: 4),
                  Text(
                    "-",
                    style: TextStyle(
                      color: Colors.orange.withOpacity(0.5),
                      fontSize: 8,
                    ),
                  ),
                  // C'est pour le titre de clip
                  SizedBox(width: 4),

                  Icon(
                    Icons.alarm,
                    size: 8,
                    color: Colors.red.withOpacity(0.5),
                  ),
                  SizedBox(width: 3),
                  Text(
                      video_data[0]['heureClipDisponible'],
                      style: TextStyle(
                          fontSize: 8,
                          color: Colors.black.withOpacity(0.6)
                      ),
                  ),
                ],
              ),
            ],
          ),

SizedBox(height: 15),
          //SizedBox(height: 5),
          Container(
            //width: double.infinity,
            height: 220.0,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(video_data[1]
                  ['Clip_img']),
                  fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(height: 5),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        // Pour le nom d'artiste
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            video_data[1]['nomArtist'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        // C'est pour le petit tiret
                        SizedBox(width: 4),
                        Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 10,
                          ),
                        ),
                        // C'est pour le titre de clip
                        SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            video_data[1]['titreClip'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.orange.withOpacity(0.7),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),

                        Stack(
                          children: [
                            Positioned(
                              child: Transform.translate(offset: Offset(-8, 2),
                                child: Row(
                                  children: [
                                    Icon(Icons.more_vert,
                                        size: 16,
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
                  // Pour l'heure de disponibilité

                ],
              ),

              SizedBox(height: 1),
              Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          video_data[0]['view_count'],
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'vues',
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),

                      SizedBox(width: 4),
                      Text(
                        "-",
                        style: TextStyle(
                          color: Colors.orange.withOpacity(0.5),
                          fontSize: 8,
                        ),
                      ),
                      // C'est pour le titre de clip
                      SizedBox(width: 4),

                      Row(
                        children: [
                          Text(
                            video_data[0]['like_count'],
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'j\'aime',
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(width: 4),
                  Text(
                    "-",
                    style: TextStyle(
                      color: Colors.orange.withOpacity(0.5),
                      fontSize: 8,
                    ),
                  ),
                  // C'est pour le titre de clip
                  SizedBox(width: 4),

                  Icon(
                    Icons.alarm,
                    size: 8,
                    color: Colors.red.withOpacity(0.5),
                  ),
                  SizedBox(width: 3),
                  Text(
                    video_data[1]['heureClipDisponible'],
                    style: TextStyle(
                        fontSize: 8,
                        color: Colors.black.withOpacity(0.6)
                    ),
                  ),
                ],
              ),
            ],
          ),

        ],
      ),
    );
  }
}



