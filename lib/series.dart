import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/details.dart';
import 'package:necflislogymenu/recently%20watched.dart';
import 'package:necflislogymenu/signup.dart';

import 'hollywood.dart';

class series extends StatefulWidget {
  const series({Key key}) : super(key: key);

  @override
  _seriesState createState() => _seriesState();
}

class _seriesState extends State<series> {

  // ignore: deprecated_member_use
  List<recent> watched  = new List();
  // ignore: deprecated_member_use
  List<tophollywood> movie = new List();

  @override
  void initState() {
    watched = getRecent();
    movie = getHollywood();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signup())); //userinfo
                  
                },
              ),
            ],
          ),


        body: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height-350,
                        width: MediaQuery.of(context).size.width,
                       child:
                       Image.asset("assets/bposter5.jpg",fit: BoxFit.fill,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 150, left:10),
                              child: Text("Aggretsuko",
                                style: TextStyle(
                                color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600
                              ),)
                          ),
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 35,
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red,
                              border: Border.all(width: 2,color: Colors.red),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 50,
                                  spreadRadius: 3,
                                  color: Colors.red
                                )
                              ]
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                SizedBox(width: 10,),
                                Icon(FontAwesomeIcons.playCircle,size: 22,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("Resume",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Text("Recently Watched",
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600
                      ),
                    )
                ),
                SizedBox(height: 5,),
                Container(
                  height: 220,
                  child: ListView.builder(
                    itemCount: watched.length,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return recentlywatched(
                        imgurl: watched[index].imgurl,
                        name: watched[index].name,
                      );
                    },
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: Text("Hollywood Movies",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600
                      ),
                    )
                ),
                SizedBox(height: 5,),
                Container(
                  height: 220,
                  child: ListView.builder(
                    itemCount: movie.length,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return hollywood(
                        imgurl: movie[index].imgurl,
                        name: movie[index].name,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        )
    );
  }
}

class hollywood extends StatelessWidget {

  final String imgurl;
  final String name;

  const hollywood({this.imgurl, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 220,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: imgurl,fit: BoxFit.cover,
              height: 220,
              width: 150,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(name,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  fontWeight: FontWeight.w800
              ),
            ),
          )
        ],
      ),
    );
  }
}

class recentlywatched extends StatelessWidget {

  final String imgurl;
  final String name;

  const recentlywatched({this.imgurl, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 220,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: imgurl,fit: BoxFit.cover,
              height: 220,
              width: 150,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(name,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 15,
                  fontWeight: FontWeight.w800
              ),
            ),
          )
        ],
      ),
    );
  }
}


