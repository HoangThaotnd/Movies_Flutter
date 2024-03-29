import 'package:flutter/material.dart';
import 'package:flutter_app_movies/blocs/movie_detail_bloc.dart';


class MovieDetailBlocProvider extends InheritedWidget {

  final MovieDetailBloc bloc;

  MovieDetailBlocProvider({Key key, Widget child}) :bloc = MovieDetailBloc(), super(key:key, child:child);

  static MovieDetailBlocProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(MovieDetailBlocProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}