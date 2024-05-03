import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_player_projet/model/son_model.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';





//class PagejouerLecture extends StatefulWidget {

class PagejouerLecteure extends StatefulWidget {
  //const PagejouerLecteure({super.key});

  final ListMusic musique;
  const PagejouerLecteure({super.key, required this.musique});

  @override
  State<PagejouerLecteure> createState() => _PagejouerLecteureState();
}

class _PagejouerLecteureState extends State<PagejouerLecteure> {
  //List<Playlist> playlists = Playlist.playlists;
  //double _currentSliderValue = 10;

  /*final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8,'0');
  }*/


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(media.width * 0.8),
                child: Image.asset(
                  widget.musique.photoMusic,
                  width: media.width * 0.7,
                  height: media.width * 0.7,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: media.width * 0.7,
                height: media.width * 0.7,
                child: SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                    customWidths: CustomSliderWidths(
                        trackWidth: 4,
                        progressBarWidth: 6,
                        shadowWidth: 8
                    ),
                    customColors: CustomSliderColors(
                        dotColor: const Color(0xffFFB1B2),
                        trackColor: const Color(0xffffffff).withOpacity(0.3),
                        progressBarColors: const [
                          Color(0xffFB9967),
                          Color(0xffE9585A)
                        ],
                        shadowColor: const Color(0xffFFB1B2),
                        shadowMaxOpacity: 0.05),
                    infoProperties: InfoProperties(
                      topLabelStyle: const TextStyle(
                        color: Colors.transparent, fontSize: 16, fontWeight: FontWeight.w400
                      ),
                      topLabelText: 'Elapsed',
                      bottomLabelStyle: const TextStyle(
                          color: Colors.transparent, fontSize: 16, fontWeight: FontWeight.w400
                      ),
                      bottomLabelText: 'time',
                      mainLabelStyle: const TextStyle(
                          color: Colors.transparent, fontSize: 50.0, fontWeight: FontWeight.w600
                      ),
                      /*modifier: (double value) {
                        final time = printDuration(Duration(seconds: value.toInt()));
                        return '$time';
                      }*/
                    ),
                    startAngle: 270,
                    angleRange: 360,
                    size: 350.0
                  ),
                  min: 0,
                  max: 100,
                  initialValue: 80,
                  onChange: (double value) {
                    // callback providing a value while its being changed (with a pan gesture)
                  },
                  onChangeStart: (double startValue) {
                    // callback providing a starting value (when a pan gesture starts)
                  },
                  onChangeEnd: (double endValue) {
                    // ucallback providing an ending value (when a pan gesture ends)
                  },
                ),
              ),
            ],
          ),

          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.musique.nameArtiste,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                      overflow: TextOverflow.ellipsis, // Ajout de l'overflow
                      maxLines: 1,
                    ),
                    Text(
                      widget.musique.titreMusic,
                      style: TextStyle(
                          fontSize: 14,
                          //fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                  ],
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
                        SvgPicture.asset(
                          'assets/icon/playlist-add-svgrepo-com.svg',
                          width: 15,
                          height: 15,
                        ),
                        Text(
                          'Ajouter au playlist',
                          style: TextStyle(
                              fontSize: 6
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [

                        //assets/icon/favorite-svgrepo-com (1).svg
                        SvgPicture.asset(
                          'assets/icon/icons8-share.svg',
                          width: 15,
                          height: 15,
                          color: Colors.black,
                        ),
                        const Text(
                          'Partager',
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

          const SizedBox(height: 10),

          PlayerAudioWidget(),

        ],
      ),
    );
  }
}

class PlayerAudioWidget extends StatefulWidget {
  const PlayerAudioWidget({super.key});

  @override
  State<PlayerAudioWidget> createState() => _PlayerAudioWidgetState();
}

class _PlayerAudioWidgetState extends State<PlayerAudioWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          // LE TEMPS DE MORCEAUX
          //SizedBox(height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                //formatTime(position.inSeconds),
                '01:48/',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1
                ),
              ),
              Text(
                //formatTime((duration-position).inSeconds),
                '03:23',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    //fontWeight: FontWeight.w500,
                    letterSpacing: 1
                ),
              ),

            ],
          ),


          SizedBox(
            height: 20,
          ),



          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  Icons.remove_red_eye
              ),
              SizedBox(width: 30),
              SvgPicture.asset(
                'assets/icon/favorite-svgrepo-com.svg',
                width: 18,
                height: 18,
              ),
            ],
          ),*/
        ],
      ),
    );
  }

}
