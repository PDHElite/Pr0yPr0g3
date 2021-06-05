import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/menu.dart';

class NewUser extends StatefulWidget {
  const NewUser({Key key}) : super(key: key);

  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 15.0),
                child: Image.asset(
                  "assets/logon.png",
                  height: 80.0,
                  width: 500.0,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.star,
                      color: Colors.red,
                    ),
                    hintText: "Nombre",
                    hintStyle: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.star,
                      color: Colors.red,
                    ),
                    hintText: "Apellido",
                    hintStyle: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.calendarAlt,
                      color: Colors.red,
                    ),
                    hintText: "Edad",
                    hintStyle: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.restroom,
                      color: Colors.red,
                    ),
                    hintText: "Sexo",
                    hintStyle: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      FontAwesomeIcons.globe,
                      color: Colors.red,
                    ),
                    hintText: "Pais",
                    hintStyle: TextStyle(
                        color: Colors.black87,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 40, left: 40),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text(
                          'Cancel',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => menu()));
                          setState(() {
                            debugPrint("Cancel button clicked");
                          });
                        },
                      ),
                    ),

                    Container(width: 50.0,),

                    Expanded(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text(
                          'Save',
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {

                          setState(() {
                            debugPrint("Save button clicked");
                          });
                        },
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
