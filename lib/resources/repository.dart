import 'package:flutter_app_movies/models/item_movies_model.dart';
import 'package:flutter_app_movies/models/detail_movies_model.dart';
import 'movie_api_provider.dart';
import 'dart:async';


class Repository {

  final MovieApiProvider _movieApiProvider = MovieApiProvider();


  Future<ItemModel> fetchMoviesList() => _movieApiProvider.fetchMovieList();

  Future<ItemModel> fetchSimilarMovies(int movieId) => _movieApiProvider.fetchSimilarMovies(movieId);

  Future<MovieDetail> fetchMovieDetail(int movieId) => _movieApiProvider.fetchMovieDetail(movieId);
}