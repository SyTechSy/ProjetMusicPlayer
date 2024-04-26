class AlbumsMixEp{
  final String idAlbums;
  final String NameAlbums;
  final String photoAlbums;
  final String nameArtiste;
  final String nombreMorceauAlbum;
  final String typeMorceauAlbum;
  final String nameTypeMorceauAlbum;
  final String hoursPost;
  final String vuePost;
  final String lickerPost;
  final String commentPost;
  final List<MorceauxAlbumsMixEp> morceaux;

  AlbumsMixEp({
    required this.idAlbums,
    required this.NameAlbums,
    required this.photoAlbums,
    required this.nameArtiste,
    required this.nombreMorceauAlbum,
    required this.typeMorceauAlbum,
    required this.nameTypeMorceauAlbum,
    required this.hoursPost,
    required this.vuePost,
    required this.lickerPost,
    required this.commentPost,
    required this.morceaux,
  });

  static List<AlbumsMixEp> albumsMixEp = [
    AlbumsMixEp(
      idAlbums : '1',
      NameAlbums : 'Sensible',
      photoAlbums : 'assets/abdoull.jpg',
      nameArtiste : 'Abdoul Prod',
      nombreMorceauAlbum : '18 Morceaux',
      typeMorceauAlbum : 'A',
      nameTypeMorceauAlbum : 'Albums',
      hoursPost : 'Il y a 5 heures',
      vuePost : '2.2 M',
      lickerPost : '698.9 k',
      commentPost : '206.2 k',
      morceaux : [
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '1',
            photoMorceauxAlbums: 'assets/abdoull.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Abdoul Prod',
            titreMorceauxAlbums: 'Intro',
            tempsMorceauxAlbums: '03:30',
            hoursMorceauxAlbums: 'Il y a 5 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '2',
            photoMorceauxAlbums: 'assets/abdoull.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Abdoul Prod ft Dr Keb',
            titreMorceauxAlbums: 'Je suis pas ton Ex',
            tempsMorceauxAlbums: '03:12',
            hoursMorceauxAlbums: 'Il y a 6 minute',
            vueMorceauxAlbums: '18.5k',
            lickeMorceauxAlbums: '1.1k',
            commentMorceauxAlbums: '4.1k'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '3',
            photoMorceauxAlbums: 'assets/abdoull.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Abdoul Prod',
            titreMorceauxAlbums: 'Femme de valeur',
            tempsMorceauxAlbums: '03:00',
            hoursMorceauxAlbums: 'Il y a 6 minute',
            vueMorceauxAlbums: '189k',
            lickeMorceauxAlbums: '10.9k',
            commentMorceauxAlbums: '978'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '4',
            photoMorceauxAlbums: 'assets/abdoull.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Abdoul Prod',
            titreMorceauxAlbums: 'Afrika',
            tempsMorceauxAlbums: '02:36',
            hoursMorceauxAlbums: 'Il y a 6 minute',
            vueMorceauxAlbums: '10k',
            lickeMorceauxAlbums: '5.1k',
            commentMorceauxAlbums: '1k'
        ),
      ],
    ),
    AlbumsMixEp(
      idAlbums : '2',
      NameAlbums : 'Reality',
      photoAlbums : 'assets/drkeb.jpg',
      nameArtiste : 'Dr Keb',
      nombreMorceauAlbum : '16 Morceaux',
      typeMorceauAlbum : 'A',
      nameTypeMorceauAlbum : 'Albums',
      hoursPost : 'Il y a 6 heures',
      vuePost : '2.5 M',
      lickerPost : '898.9 k',
      commentPost : '406.2 k',
      morceaux : [
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '1',
            photoMorceauxAlbums: 'assets/drkeb.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Dr Keb',
            titreMorceauxAlbums: 'Reel Warior',
            tempsMorceauxAlbums: '03:30',
            hoursMorceauxAlbums: 'Il y a 2 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '2',
            photoMorceauxAlbums: 'assets/drkeb.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Dr Keb',
            titreMorceauxAlbums: 'Today',
            tempsMorceauxAlbums: '03:42',
            hoursMorceauxAlbums: 'Il y a 2 minute',
            vueMorceauxAlbums: '10.0k',
            lickeMorceauxAlbums: '18.8k',
            commentMorceauxAlbums: '808'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '3',
            photoMorceauxAlbums: 'assets/drkeb.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Dr Keb',
            titreMorceauxAlbums: 'Petite fille',
            tempsMorceauxAlbums: '03:45',
            hoursMorceauxAlbums: 'Il y a 2 minute',
            vueMorceauxAlbums: '77.0k',
            lickeMorceauxAlbums: '45.1k',
            commentMorceauxAlbums: '10.8k'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '4',
            photoMorceauxAlbums: 'assets/drkeb.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Dr Keb',
            titreMorceauxAlbums: 'Papa',
            tempsMorceauxAlbums: '02:59',
            hoursMorceauxAlbums: 'Il y a 2 minute',
            vueMorceauxAlbums: '100.0k',
            lickeMorceauxAlbums: '98.8k',
            commentMorceauxAlbums: '80.8k'
        ),
      ],
    ),
    AlbumsMixEp(
      idAlbums : '3',
      NameAlbums : 'Adam & Eve',
      photoAlbums : 'assets/lilZed_3.jpg',
      nameArtiste : 'Lil Zed',
      nombreMorceauAlbum : '8 Morceaux',
      typeMorceauAlbum : 'E',
      nameTypeMorceauAlbum : 'Ep',
      hoursPost : 'Il y a 6 heures',
      vuePost : '250k',
      lickerPost : '88k',
      commentPost : '10.5k',
      morceaux : [
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '1',
            photoMorceauxAlbums: 'assets/lilZed_3.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Lil Zed',
            titreMorceauxAlbums: 'BABA DEN',
            tempsMorceauxAlbums: '03:30',
            hoursMorceauxAlbums: 'hoursMorceauxAlbums',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '2',
            photoMorceauxAlbums: 'assets/lilZed_3.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Lil Zed',
            titreMorceauxAlbums: 'BREF',
            tempsMorceauxAlbums: '03:00',
            hoursMorceauxAlbums: 'Il y a 3 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '3',
            photoMorceauxAlbums: 'assets/lilZed_3.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Lil Zed',
            titreMorceauxAlbums: 'Couplet Kele',
            tempsMorceauxAlbums: '02:20',
            hoursMorceauxAlbums: 'Il y a 3 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '4',
            photoMorceauxAlbums: 'assets/lilZed_3.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Lil Zed ft Abba wayne',
            titreMorceauxAlbums: 'Bai ni ka vie do',
            tempsMorceauxAlbums: '03:24',
            hoursMorceauxAlbums: 'Il y a 3 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
      ],
    ),
    AlbumsMixEp(
      idAlbums : '4',
      NameAlbums : 'Love',
      photoAlbums : 'assets/seydou_1.jpg',
      nameArtiste : 'Seydou Ché',
      nombreMorceauAlbum : '10 Morceaux',
      typeMorceauAlbum : 'M',
      nameTypeMorceauAlbum : 'Mixtape',
      hoursPost : 'Il y a 6 heures',
      vuePost : '550.3k',
      lickerPost : '298.9k',
      commentPost : '100.2k',
      morceaux : [
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '1',
            photoMorceauxAlbums: 'assets/seydou_1.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Seydou Ché',
            titreMorceauxAlbums: 'Reel Warior',
            tempsMorceauxAlbums: '03:30',
            hoursMorceauxAlbums: 'hoursMorceauxAlbums',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '2',
            photoMorceauxAlbums: 'assets/seydou_1.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Seydou Ché',
            titreMorceauxAlbums: 'Kanou guélema',
            tempsMorceauxAlbums: '03:40',
            hoursMorceauxAlbums: 'Il y a 8 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '3',
            photoMorceauxAlbums: 'assets/seydou_1.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Seydou Ché ft Abdoul prod',
            titreMorceauxAlbums: 'Tai Tai',
            tempsMorceauxAlbums: '03:21',
            hoursMorceauxAlbums: 'Il y a 8 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
        MorceauxAlbumsMixEp(
            idMorceauxAlbums: '4',
            photoMorceauxAlbums: 'assets/seydou_1.jpg',
            urlMorceauxAlbums: 'assets/MYLMO_Ft._DR_KEB_-_SAMBA__2021_.MP3',
            nameArtisteMorceauxAlbums: 'Seydou Ché ft Lil Dou',
            titreMorceauxAlbums: 'Ne be ede Fai',
            tempsMorceauxAlbums: '04:01',
            hoursMorceauxAlbums: 'Il y a 8 minute',
            vueMorceauxAlbums: '20.0k',
            lickeMorceauxAlbums: '12.1k',
            commentMorceauxAlbums: '408'
        ),
      ],
    ),
  ];
}

class MorceauxAlbumsMixEp {
  final String idMorceauxAlbums;
  final String photoMorceauxAlbums;
  final String urlMorceauxAlbums;
  final String nameArtisteMorceauxAlbums;
  final String titreMorceauxAlbums;
  final String tempsMorceauxAlbums;
  final String hoursMorceauxAlbums;
  final String vueMorceauxAlbums;
  final String lickeMorceauxAlbums;
  final String commentMorceauxAlbums;

  MorceauxAlbumsMixEp ({
    required this.idMorceauxAlbums,
    required this.photoMorceauxAlbums,
    required this.urlMorceauxAlbums,
    required this.nameArtisteMorceauxAlbums,
    required this.titreMorceauxAlbums,
    required this.tempsMorceauxAlbums,
    required this.hoursMorceauxAlbums,
    required this.vueMorceauxAlbums,
    required this.lickeMorceauxAlbums,
    required this.commentMorceauxAlbums
  });

}

