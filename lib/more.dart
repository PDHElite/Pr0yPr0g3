import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/configuracion/Plantilla/screens/plantillabase.dart';
import 'package:necflislogymenu/configuracion/busqueda.dart';
import 'package:necflislogymenu/configuracion/new_user.dart';
import 'package:necflislogymenu/configuracion/pagosefec.dart';
import 'package:necflislogymenu/configuracion/subscription.dart';
import 'package:necflislogymenu/widgets/info_card.dart';
import 'package:necflislogymenu/configuracion/equipo.dart';

class More extends StatefulWidget {
  const More({Key key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}
const Busqueda = "Busqueda General";
const Clientes = "Clientes";
const Planes = "Tarifas o Planes";
const Pago = "Pagos";
const Plantilla = "Crear plantilla";
const Equipo = "Integrantes";

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: const EdgeInsets.only(top: 100),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/ava1.jpg'),
                ),
                Text(
                  "Administrador",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  "Configuracion",
                  style: TextStyle(
                    fontSize: 30.0,
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
                    text: Busqueda,
                    icon: FontAwesomeIcons.searchengin,
                    onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BusquedaGen()));}),
                InfoCard(
                    text: Clientes, icon: FontAwesomeIcons.portrait, onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewUser()));}),
                InfoCard(
                    text: Planes, icon: FontAwesomeIcons.magic, onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Subscription()));}),
                InfoCard(
                    text: Pago,
                    icon: FontAwesomeIcons.handHoldingUsd,
                    onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PagosEfectuados()));}),
                InfoCard(
                    text: Plantilla, icon: FontAwesomeIcons.fileSignature, onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PlantillaBase()));}),
                InfoCard(
                    text: Equipo, icon: FontAwesomeIcons.sketch, onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Equipox()));}),
              ],
            ),
          ),
        ));
  }
}
