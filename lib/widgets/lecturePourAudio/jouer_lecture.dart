import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';
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

          SlideProgreeAudio(),

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

class SlideProgreeAudio extends StatefulWidget {
  const SlideProgreeAudio({super.key});

  @override
  State<SlideProgreeAudio> createState() => _SlideProgreeAudioState();
}

class _SlideProgreeAudioState extends State<SlideProgreeAudio> {
  final _player = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    _setupAudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

          _progessBar(),

          Row(
            children: [
              _playbackControlButton(),
            ],
          ),
        ],
      ),
    );
  }

  /*Future<void> _setupAudioPlayer() async {
    _player.playbackEventStream.listen((event) { },
        onError: (Object e, StackTrace stacktrace) {
      print("A stream error occurred : $e");
    });
    try {
      _player.setAudioSource(AudioSource.uri(Uri.parse("https://soundcloud.com/tommyrichmann/million-dollar-baby-vhs?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing.mp3")));
    } catch(e) {
      print("Error loading audio source : $e");
    }
  }*/
  Future<void> _setupAudioPlayer() async {
    _player.playbackEventStream.listen((event) { },
        onError: (Object e, StackTrace stacktrace) {
          print("Une erreur de flux s'est produite : $e");
        });
    try {
      await _player.setAudioSource(AudioSource.asset('assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3'));
    } catch(e) {
      print("Erreur lors du chargement de la source audio: $e");
    }
  }

  Widget _progessBar() {
    return StreamBuilder<Duration?>(
        stream: _player.positionStream, builder: (context, snapshot) {
          return ProgressBar(
              progress: snapshot.data ?? Duration.zero,
              buffered: _player.bufferedPosition,
              total: _player.duration ?? Duration.zero
          );
    }
    );
  }

  Widget _playbackControlButton() {
    return StreamBuilder<PlayerState>(
        stream: _player.playerStateStream,
        builder: (context, snapshot) {
          final processingState = snapshot.data?.processingState;
          final playing = snapshot.data?.playing;
          if (processingState == ProcessingState.loading ||
          processingState == ProcessingState.buffering) {
            return Container(
              margin: EdgeInsets.all(8.0),
              width: 64,
              height: 64,
              child: const CircularProgressIndicator(),
            );
          } else if (playing != true) {
            return IconButton(
                onPressed: _player.play,
                iconSize: 64,
                icon: const Icon(Icons.play_arrow)
            );
          } else if (processingState != ProcessingState.completed) {
            return IconButton(
                onPressed: _player.pause,
                iconSize: 64,
                icon: const Icon(Icons.pause)
            );
          } else {
            return IconButton(
                onPressed: () => _player.seek(Duration.zero),
                iconSize: 64,
                icon: const Icon(Icons.replay)
            );
          }
        });
  }
}

