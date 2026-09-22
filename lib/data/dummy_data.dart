import 'package:anime_verse/models/anime.dart';

class DummyData {
  static final List<Anime> animeList = [
    const Anime(
      id: '1',
      title: 'Black Clover',
      imagePath: 'assets/images/black_clover.jpg',
      genre: 'Action, Adventure, Fantasy',
      rating: '8.14',
      totalEpisodes: '170',
      description:
      'Asta and Yuno were abandoned at the same church on the same day.',
    ),
    const Anime(
      id: '2',
      title: 'Hunter x Hunter',
      imagePath: 'assets/images/hunter_x_hunter.jpg',
      genre: 'Action, Adventure, Fantasy',
      rating: '9.12',
      totalEpisodes: '148',
      description:
      'Gon Freecss sets out on a journey to become a Hunter and find his father.',
    ),
    const Anime(
      id: '3',
      title: 'Koe no Katachi',
      imagePath: 'assets/images/koe_no_katachi.jpg',
      genre: 'Drama',
      rating: '8.99',
      totalEpisodes: '1',
      description:
      'A story about redemption, friendship, and understanding.',
    ),
  ];
}