import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/configuracion/subscription.dart';
import 'package:necflislogymenu/main.dart';
import 'package:necflislogymenu/menu.dart';
import 'package:necflislogymenu/widgets/info_card.dart';


class Userinfo extends StatefulWidget {
  const Userinfo({Key key}) : super(key: key);

  @override
  _UserinfoState createState() => _UserinfoState();
}

const InfoGenUser = "Mi Perfil";
const PagosUser = "Mis Pagos";
const SubcripcionUser = "Mejorar mi plan";
const LogoutUser = "Salir";



class _UserinfoState extends State<Userinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: SafeArea(
            minimum: const EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/ava2.jpg'),
                ),
                SizedBox(height: 15,),
                Text(
                  "William Alejandro Berganza Espina",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  "PLAN BASICO",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blueGrey[200],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro",
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                InfoCard(
                    text: InfoGenUser, icon: FontAwesomeIcons.portrait, onPressed: () async {}),
                InfoCard(
                    text: PagosUser, icon: FontAwesomeIcons.handHoldingUsd, onPressed: () async {}),
                InfoCard(
                    text: SubcripcionUser,
                    icon: FontAwesomeIcons.magic,
                    onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Subscription()));}),
                InfoCard(
                    text: LogoutUser, icon: FontAwesomeIcons.powerOff, onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));}),
              ],
            ),
          ),
        ));
  }
}
