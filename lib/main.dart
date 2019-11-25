import 'package:flutter/material.dart';
import 'package:flutter_app_movies/views/movie_list_view.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MovieList(),
      ),
    );
  }
}