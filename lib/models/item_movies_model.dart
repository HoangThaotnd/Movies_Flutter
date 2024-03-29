class ItemModel {
  int _page;
  int _total_results;
  int _total_pages;
  List<_Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['results'].length);
    _page = parsedJson['page'];
    _total_results = parsedJson['total_results'];
    _total_pages = parsedJson['total_pages'];

    List<_Result> temp = [];
    for (int i = 0; i < parsedJson['results'].length; i++) {
      _Result result = _Result(parsedJson['results'][i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get results => _results;

  int get total_pages => _total_pages;

  int get total_results => _total_results;

  int get page => _page;
}

class _Result {
  double _popularity;
  int _vote_count;
  bool _video;
  String _poster_path;
  int _id;
  bool _adult;
  String _backdrop_path;
  String _original_language;
  String _original_title;
  List<int> _genre_ids = [];
  String _title;
  var _vote_average;
  String _overview;
  String _release_date;

  _Result(result) {
    _popularity = result['popularity'];
    _vote_count = result['vote_count'];
    _video = result['video'];
    _poster_path = result['poster_path'];
    _id = result['id'];
    _adult = result['adult'];
    _backdrop_path = result['backdrop_path'];
    _original_language = result['original_language'];
    _original_title = result['original_title'];

    for (int i = 0; i < result['genre_ids'].length; i++) {
      _genre_ids.add(result['genre_ids'][i]);
    }

    _title = result['title'];
    _vote_average = result['vote_average'];
    _overview = result['overview'];
    _release_date = result['release_date'];
  }
  double get popularity => _popularity;

  int get vote_count => _vote_count;

  bool get video => _video;

  String get poster_path => _poster_path;

  int get id => _id;

  bool get adult => _adult;

  String get backdrop_path => _backdrop_path;

  String get original_language => _original_language;

  String get original_title => _original_title;

  List<int> get genre_ids => _genre_ids;

  String get title => _title;

  double get vote_average => _vote_average;

  String get overview => _overview;

  String get release_date => _release_date;
}