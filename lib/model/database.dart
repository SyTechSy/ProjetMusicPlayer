class Song {
  final int idMusic;
  final String photoMusic;
  final String nameArtiste;
  final String titreMusic;
  final String tempsMusic;
  final String hoursPost;
  final String vuePost;
  final String lickerPost;
  final String commentPost;

  Song({
    required this.idMusic,
    required this.photoMusic,
    required this.nameArtiste,
    required this.titreMusic,
    required this.tempsMusic,
    required this.hoursPost,
    required this.vuePost,
    required this.lickerPost,
    required this.commentPost
  });
}

List<Song> mostPopular = [
  Song(
    idMusic: 1,
    photoMusic: 'assets/abdoull.jpg',
    nameArtiste: 'Dr keb ',
    titreMusic: 'Tonight',
    tempsMusic: '04:30',
    hoursPost: 'Il y\'a 1 seconde',
    vuePost: '20.0k',
    lickerPost: '26k',
    commentPost: '206',
  ),
  Song(
    idMusic: 2,
    photoMusic: 'assets/drkeb.jpg',
    nameArtiste: 'Milmo ft Dr keb',
    titreMusic: 'SAMBA',
    tempsMusic: '04:30',
    hoursPost: 'Il y\'a 1 seconde',
    vuePost: '20.0k',
    lickerPost: '26k',
    commentPost: '206',
  ),
  Song(
    idMusic: 3,
    photoMusic: 'assets/abdoull.jpg',
    nameArtiste: 'Dr keb',
    titreMusic: 'A BE GNENABÖ',
    tempsMusic: '04:30',
    hoursPost: 'Il y\'a 1 seconde',
    vuePost: '20.0k',
    lickerPost: '26k',
    commentPost: '206',
  ),
];

List<Song> newRelease = [
  Song(
    idMusic: 1,
    photoMusic: 'assets/lilZed_1.jpg',
    nameArtiste: 'Dr keb ',
    titreMusic: 'Tonight',
    tempsMusic: '04:30',
    hoursPost: 'Il y\'a 1 seconde',
    vuePost: '20.0k',
    lickerPost: '26k',
    commentPost: '206',
  ),
  Song(
    idMusic: 2,
    photoMusic: 'assets/lilZed_2.jpg',
    nameArtiste: 'Lil Zed',
    titreMusic: 'Eva',
    tempsMusic: '04:30',
    hoursPost: 'Il y\'a 1 seconde',
    vuePost: '20.0k',
    lickerPost: '26k',
    commentPost: '206',
  ),
  Song(
    idMusic: 3,
    photoMusic: 'assets/drkeb.jpg',
    nameArtiste: 'Dr keb',
    titreMusic: 'A BE GNENABÖ',
    tempsMusic: '04:30',
    hoursPost: 'Il y\'a 1 seconde',
    vuePost: '20.0k',
    lickerPost: '26k',
    commentPost: '206',
  ),
];