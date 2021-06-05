import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:necflislogymenu/menu.dart';

class Equipox extends StatefulWidget {
  const Equipox({Key key}) : super(key: key);

  @override
  _EquipoxState createState() => _EquipoxState();
}

class _EquipoxState extends State<Equipox> {
  Widget custum(String image, String text, Color clrs, String pagenum) {
    return Container(
      color: clrs,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20,top: 100),
            alignment: Alignment.centerRight,
            width: double.infinity,
            child: Text(
              pagenum,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: IconButton(
            icon: Icon(CupertinoIcons.back),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => menu()));
            },
          ),
          title: Text(
            'BACK',
            style: TextStyle(color: Colors.white,fontSize: 14),
          ),
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Container(
            child: LiquidSwipe(
              pages: [
                custum("assets/will.jpg","William Alejandro Berganza Espina, 0907-16-7931,\nTelegram User: @AlexBerganza" , Colors.black,"01"),
                custum("assets/UMG.jpg","Darwin Daneri Morales López, 0907-19-11615", Colors.red,"02"),
                custum("assets/bad1.jpg","Y aqui hirian mis demas compañeros", Colors.green,"03"),
                custum("assets/bad2.jpg","Si vieran aportado algo", Colors.black,"04"),
                custum("assets/malasuerte.jpg","Bad Ending", Colors.cyan,"05"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
