import 'package:flutter/material.dart';
import 'package:necflislogymenu/Api%20Public%20Interface%20test/widgets/toprated.dart';
import 'package:necflislogymenu/Api%20Public%20Interface%20test/widgets/trending.dart';
import 'package:necflislogymenu/Api%20Public%20Interface%20test/widgets/tv.dart';
import 'package:tmdb_api/tmdb_api.dart';

class HomeTest extends StatefulWidget {
  //const HomeTest({Key? key}) : super(key: key);

  @override
  _HomeTestState createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {

  final String apikey = '9eca772a0dbad60bc38fcbcb941e8dc4';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZWNhNzcyYTBkYmFkNjBiYzM4ZmNiY2I5NDFlOGRjNCIsInN1YiI6IjYwYmIxMjU3ZDdmYmRhMDA0MGFkOTA0ZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.9z7GzQ114eEx-fyaFR-32EWFJMc6PfBwtXkatEXaynI';
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];

  @override
  void initState() {
    super.initState();
    loadmovies();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPouplar();
    print((trendingresult));
    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,

        body: ListView(
          children: [
            TV(tv: tv),
            TrendingMovies(
              trending: trendingmovies,
            ),
            TopRatedMovies(
              toprated: topratedmovies,
            ),
          ],
        ));
  }
}
