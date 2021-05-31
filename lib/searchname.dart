import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Searchname extends StatefulWidget {
  const Searchname({Key key}) : super(key: key);

  @override
  _SearchnameState createState() => _SearchnameState();
}

class _SearchnameState extends State<Searchname> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 25),
                child: Text("Search",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(FontAwesomeIcons.search,color: Colors.red,),
                      hintText: "Accion, Novela, Anime...",
                      hintStyle: TextStyle(
                          color: Colors.black87,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black,width: 5)
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
