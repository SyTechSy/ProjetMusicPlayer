class ListPubDecouvrir {
  final int idPubDecouvrir;
  final String photoPostUserArtist;
  final String nameArtiste;
  final String datePost;
  final String description;
  final String photoPost;
  final String likePost;
  final String commentPost;
  final String sendPost;

  ListPubDecouvrir({
    required this.idPubDecouvrir,
    required this.photoPostUserArtist,
    required this.nameArtiste,
    required this.datePost,
    required this.description,
    required this.photoPost,
    required this.likePost,
    required this.commentPost,
    required this.sendPost
  });

  static List<ListPubDecouvrir> listPubDecouvrir = [
    ListPubDecouvrir(
        idPubDecouvrir: 1,
        photoPostUserArtist: "",
        nameArtiste: "Dr Keb",
        datePost: "Il y a 1j",
        description: "Une petite descriprion pour commenter un peu de la musique pour donnée l\'envie d\'attendre.",
        photoPost: "assets/drkeb.jpg",
        likePost: "5.3 M",
        commentPost: "365.3",
        sendPost: "233.1 k"
    ),
    ListPubDecouvrir(
        idPubDecouvrir: 1,
        photoPostUserArtist: "Lil Zed",
        nameArtiste: "Lil Zed",
        datePost: "Il y a 2j",
        description: "Une petite descriprion pour commenter un peu de la musique pour donnée l\'envie d\'attendre.",
        photoPost: "assets/lilZed_3.jpg",
        likePost: "3.3 M",
        commentPost: "465.3",
        sendPost: "433.1 k"
    ),
    ListPubDecouvrir(
        idPubDecouvrir: 1,
        photoPostUserArtist: "Abdoul Prod",
        nameArtiste: "Abdoul Prod",
        datePost: "Il y a 2j",
        description: "Une petite descriprion pour commenter un peu de la musique pour donnée l\'envie d\'attendre.",
        photoPost: "assets/abdoull.jpg",
        likePost: "3.3 M",
        commentPost: "465.3",
        sendPost: "433.1 k"
    ),
    ListPubDecouvrir(
        idPubDecouvrir: 1,
        photoPostUserArtist: "Seydou Ché",
        nameArtiste: "Seydou Ché",
        datePost: "Il y a 2j",
        description: "Une petite descriprion pour commenter un peu de la musique pour donnée l\'envie d\'attendre.",
        photoPost: "assets/seydou_1.jpg",
        likePost: "2.3 M",
        commentPost: "265.3",
        sendPost: "233.1 k"
    ),
    ListPubDecouvrir(
        idPubDecouvrir: 1,
        photoPostUserArtist: "Lil Zed",
        nameArtiste: "Lil Zed",
        datePost: "Il y a 2j",
        description: "Une petite descriprion pour commenter un peu de la musique pour donnée l\'envie d\'attendre.",
        photoPost: "assets/lilZed_2.jpg",
        likePost: "3.3 M",
        commentPost: "465.3",
        sendPost: "433.1 k"
    ),
  ];
}