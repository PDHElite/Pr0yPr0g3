import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/configuracion/Plantilla/screens/plantillabase.dart';
import 'package:necflislogymenu/menu.dart';
import 'package:necflislogymenu/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlantillaBase(),
    );
  }
}

class SpalshScreen extends StatefulWidget {

  @override
  _SpalshScreenState createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 5),()
    {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.black,
      child: Center(
        child: Image.asset('assets/logobig.PNG', height: 250.0, width: 300.0,),
      ),
    );
  }
}



class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset("assets/fondo.jpg",
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            Container(
              height: 800.0 ,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black45,
                    Colors.black54,
                  ]
                )
              ),

              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 25.0, top: 25.0),
                      child: Image.asset("assets/logon.png", height: 80.0, width: 500.0,),

                  ),

                  Container(
                    margin: EdgeInsets.all(25),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                              color: Colors.black87,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(width: 5, color: Colors.black),

                          )
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              color: Colors.black87,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(width: 5.0, color: Colors.black),

                          )
                      ),
                    ),
                  ),

                  SizedBox(height: 25,),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: MediaQuery.of(context).size.width-77,
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red,
                      border: Border.all(width: 2, color: Colors.red),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          spreadRadius: 3,
                          color: Colors.red,

                        )
                      ]
                    ),

                    child: InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => menu()));
                      },
                      child: Text("LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        letterSpacing: 3
                      ),
                      ),
                    ),

                  ),

                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        isCheckBox = true;
                      });
                    },

                    onDoubleTap: (){
                      setState(() {
                        isCheckBox = false;
                      });
                    },

                    child: Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Row(

                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Icon(
                            FontAwesomeIcons.checkSquare,
                            size: 20,
                            color: isCheckBox? Colors.orangeAccent : Colors.white,
                          ),
                          SizedBox(width: 20,),
                          Text("Remember my login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic
                          ),
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Text("Does not have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 1

                        ),
                        ),
                        GestureDetector(

                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signup()));
                          },

                          child: Text(" Sign Up",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 17,
                                fontStyle: FontStyle.italic,
                                letterSpacing: 2,

                                decoration: TextDecoration.underline,
                                decorationColor: Colors.red,
                                decorationThickness: 1.5
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ],

              ),
            )

          ],
        ),
        )
    );
  }
}
