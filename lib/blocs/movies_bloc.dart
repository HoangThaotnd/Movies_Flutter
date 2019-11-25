import 'package:flutter_app_movies/models/item_movies_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_app_movies/resources/repository.dart';

class MoviesBloc {

  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemModel>();

  Observable<ItemModel> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchMoviesList();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher?.close();
  }
}
final bloc = MoviesBloc();