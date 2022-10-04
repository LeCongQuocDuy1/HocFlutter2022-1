import 'dart:core';

class Movie {
  final String idMovie;
  final String nameMovie;
  final String descMovie;
  final String categoryMovie;
  final String imgMovie;
  final String bannerMovie;
  final String pointMovie;
  final String idActor;

  Movie(this.idMovie, this.nameMovie, this.descMovie, this.categoryMovie, this.imgMovie, this.bannerMovie, this.pointMovie, this.idActor);

  static List<Movie> MockMovie() {
    List<Movie> rs = [];
    rs.add(Movie(
        'MV001',
        'Black Window',
        'Bác Sĩ Dolittle: Chuyến Phiêu Lưu Thần Thoại kể về vị bác sĩ nổi tiếng Dolittle - người đàn ông có thể nói chuyện với động vật.',
        'Action - Adventure',
        'assets/movie_images/img2.jpg',
        'assets/movie_images/img3.jpg',
        '8.5',
        'AT002'
    ));
    rs.add(Movie(
        'MV002',
        'Bác Sĩ Dolittle',
        'Bác Sĩ Dolittle: Chuyến Phiêu Lưu Thần Thoại kể về vị bác sĩ nổi tiếng Dolittle - người đàn ông có thể nói chuyện với động vật.',
        'Family - Adventure',
        'assets/movie_images/img4.jpg',
        'assets/movie_images/img1.jpg',
        '7.3',
        'AT003'
    ));
    rs.add(Movie(
        'MV003',
        'Mulan',
        'Bác Sĩ Dolittle: Chuyến Phiêu Lưu Thần Thoại kể về vị bác sĩ nổi tiếng Dolittle - người đàn ông có thể nói chuyện với động vật.',
        'Action - Adventure',
        'assets/movie_images/img6.jpg',
        'assets/movie_images/img5.jpg',
        '6.5',
        'AT004'
    ));
    return rs;
  }
}