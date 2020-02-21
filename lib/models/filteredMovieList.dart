import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:movie_store/models/movie.dart';

class FilteredMovieList extends ChangeNotifier {
  List<Movie> _filteredMovieList = [];

  UnmodifiableListView<Movie> get filteredMovieList =>
      UnmodifiableListView(_filteredMovieList);

  void filterList(int movieGenreIndex) {
    _filteredMovieList.clear();

    if (movieGenreIndex == null) {
      notifyListeners();
      return;
    } else {
      var filter = movieGenre.values[movieGenreIndex];
      if (filter == movieGenre.All)
        _filteredMovieList = new List<Movie>.from(allMoviesList);

      for (final movie in allMoviesList) {
        if (movie.category == filter) {
          _filteredMovieList.add(movie);
        }
      }
    }
    notifyListeners();
  }
}
