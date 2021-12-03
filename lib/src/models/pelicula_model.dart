class Peliculas {
  List<Pelicula> items = [];

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  String uniqueId;

  int id;
  String posterPath;
  String originalTitle;
  String overview;
  String releaseDate;

  Pelicula({

  this.releaseDate,
  this.posterPath,
  this.overview,
  this.id,
  this.originalTitle,



  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    originalTitle = json["original_title"];
    posterPath = json["poster_path"];
    overview = json["overview"];
    id = json["id"];
    releaseDate = json["release_date"];
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  // getBackgroundImg() {
  //   if (posterPath == null) {
  //     return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
  //   } else {
  //     return 'https://image.tmdb.org/t/p/w500/$backdropPath';
  //   }
  // }
}
