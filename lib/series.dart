import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/Api%20Public%20Interface%20test/widgets/toprated.dart';
import 'package:necflislogymenu/Api%20Public%20Interface%20test/widgets/trending.dart';
import 'package:necflislogymenu/Api%20Public%20Interface%20test/widgets/tv.dart';
import 'package:necflislogymenu/userinfo.dart';
import 'package:tmdb_api/tmdb_api.dart';


class series extends StatefulWidget {
  const series({Key key}) : super(key: key);

  @override
  _seriesState createState() => _seriesState();
}

class _seriesState extends State<series> {

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
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.black,

            title: Image.asset("assets/nlogo.png", height: 45, width: 100,),
            actions: [
              IconButton(
                padding: EdgeInsets.only(right: 15.0),
                icon: Icon(FontAwesomeIcons.user),
                iconSize: 25.0,
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Userinfo()));

                },
              ),
            ],
          ),


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
            )

        )
    );
  }
}

