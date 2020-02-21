import 'package:flutter/foundation.dart';

enum movieGenre {
  All,
  Action,
  Comedy,
  Romance,
  Horror,
  Drama,
  Adventure,
  Crime,
  Fantasy,
  SciFi
}

String translateGenreEnum(movieGenre category) {
  switch (category) {
    case movieGenre.All:
      return "All";
    case movieGenre.Action:
      return "Action";
    case movieGenre.Comedy:
      return "Comedy";
    case movieGenre.Romance:
      return "Romance";
    case movieGenre.Horror:
      return "Horror";
    case movieGenre.Drama:
      return "Drama";
    case movieGenre.Adventure:
      return "Adventure";
    case movieGenre.Crime:
      return "Crime";
    case movieGenre.Fantasy:
      return "Fantasy";
    case movieGenre.SciFi:
      return "SciFi";
    default:
      return "Unkown category";
  }
}

class Movie {
  int id;
  String title;
  movieGenre category;
  int launchYear;
  String poster;
  String synopsis;
  double priceDollar;

  String get categoryString {
    return translateGenreEnum(this.category);
  }

  Movie(
      {@required this.id,
      @required this.title,
      @required this.category,
      @required this.launchYear,
      @required this.poster,
      @required this.synopsis,
      @required this.priceDollar});
}

final List<Movie> popularMoviesList = [
  Movie(
      id: 0,
      title: 'Captain Marvel',
      category: movieGenre.Action,
      launchYear: 2019,
      poster: 'assets/images/cptmarvel.jpeg',
      priceDollar: 16.99,
      synopsis:
          'Captain Marvel is a 2019 American superhero film based on the Marvel Comics character Carol Danvers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures.'),
  Movie(
      id: 1,
      title: 'The Hangover',
      category: movieGenre.Comedy,
      launchYear: 2009,
      poster: 'assets/images/hangover.jpeg',
      priceDollar: 7.99,
      synopsis:
          'The Hangover is a 2009 American comedy film directed by Todd Phillips, co-produced with Daniel Goldberg and written by Jon Lucas and Scott Moore. It is the first installment in The Hangover trilogy. The film stars Bradley Cooper, Ed Helms, Zach Galifianakis, Heather Graham, Justin Bartha, Ken Jeong, and Jeffrey Tambor. It tells the story of Phil Wenneck, Stu Price, Alan Garner, and Doug Billings, who travel to Las Vegas for a bachelor party to celebrate Doug\'s impending marriage.'),
  Movie(
      id: 2,
      title: 'Wonder Woman',
      category: movieGenre.Action,
      launchYear: 2017,
      priceDollar: 11.99,
      poster: 'assets/images/wwoman.jpeg',
      synopsis:
          'Wonder Woman is a 2017 American superhero film based on the DC Comics character of the same name, produced by DC Films in association with RatPac Entertainment and Chinese company Tencent Pictures, and distributed by Warner Bros. Pictures. It is the fourth installment in the DC Extended Universe (DCEU).'),
  Movie(
      id: 3,
      title: 'X-Men: Dark Phoenix',
      category: movieGenre.Action,
      launchYear: 2019,
      priceDollar: 15.00,
      poster: 'assets/images/xmen.jpeg',
      synopsis:
          'X-Men: Dark Phoenix is a 2019 American superhero film based on the Marvel Comics X-Men characters. It is a sequel to 2016\'s X-Men: Apocalypse, the seventh mainline installment in the X-Men film series and the twelfth installment overall.'),
  Movie(
      id: 4,
      title: 'Zombieland',
      category: movieGenre.Comedy,
      launchYear: 2009,
      poster: 'assets/images/zombi.jpeg',
      priceDollar: 6.99,
      synopsis:
          'Zombieland is a 2009 American post-apocalyptic zombie comedy film directed by Ruben Fleischer in his theatrical debut and written by Rhett Reese and Paul Wernick. The film stars Woody Harrelson, Jesse Eisenberg, Emma Stone, and Abigail Breslin as survivors of a zombie apocalypse. The film follows a geeky college kid making his way through the zombie apocalypse, meeting three strangers along the way and together taking an extended road trip across the Southwestern United States in an attempt to find a sanctuary free from zombies.'),
];

final List<Movie> allMoviesList = [
  Movie(
      id: 5,
      title: 'Captain Marvel',
      category: movieGenre.Action,
      launchYear: 2019,
      poster: 'assets/images/cptmarvel.jpeg',
      priceDollar: 16.99,
      synopsis:
          'Captain Marvel is a 2019 American superhero film based on the Marvel Comics character Carol Danvers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures.'),
  Movie(
      id: 6,
      title: 'The Hangover',
      category: movieGenre.Comedy,
      launchYear: 2009,
      poster: 'assets/images/hangover.jpeg',
      priceDollar: 7.99,
      synopsis:
          'The Hangover is a 2009 American comedy film directed by Todd Phillips, co-produced with Daniel Goldberg and written by Jon Lucas and Scott Moore. It is the first installment in The Hangover trilogy. The film stars Bradley Cooper, Ed Helms, Zach Galifianakis, Heather Graham, Justin Bartha, Ken Jeong, and Jeffrey Tambor. It tells the story of Phil Wenneck, Stu Price, Alan Garner, and Doug Billings, who travel to Las Vegas for a bachelor party to celebrate Doug\'s impending marriage.'),
  Movie(
      id: 7,
      title: 'Wonder Woman',
      category: movieGenre.Action,
      launchYear: 2017,
      priceDollar: 11.99,
      poster: 'assets/images/wwoman.jpeg',
      synopsis:
          'Wonder Woman is a 2017 American superhero film based on the DC Comics character of the same name, produced by DC Films in association with RatPac Entertainment and Chinese company Tencent Pictures, and distributed by Warner Bros. Pictures. It is the fourth installment in the DC Extended Universe (DCEU).'),
  Movie(
      id: 8,
      title: 'X-Men: Dark Phoenix',
      category: movieGenre.Action,
      launchYear: 2019,
      priceDollar: 15.00,
      poster: 'assets/images/xmen.jpeg',
      synopsis:
          'X-Men: Dark Phoenix is a 2019 American superhero film based on the Marvel Comics X-Men characters. It is a sequel to 2016\'s X-Men: Apocalypse, the seventh mainline installment in the X-Men film series and the twelfth installment overall.'),
  Movie(
      id: 9,
      title: 'Zombieland',
      category: movieGenre.Comedy,
      launchYear: 2009,
      poster: 'assets/images/zombi.jpeg',
      priceDollar: 6.99,
      synopsis:
          'Zombieland is a 2009 American post-apocalyptic zombie comedy film directed by Ruben Fleischer in his theatrical debut and written by Rhett Reese and Paul Wernick. The film stars Woody Harrelson, Jesse Eisenberg, Emma Stone, and Abigail Breslin as survivors of a zombie apocalypse. The film follows a geeky college kid making his way through the zombie apocalypse, meeting three strangers along the way and together taking an extended road trip across the Southwestern United States in an attempt to find a sanctuary free from zombies.'),
];
