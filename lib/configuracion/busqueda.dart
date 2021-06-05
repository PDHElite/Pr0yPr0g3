import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/configuracion/BusquedaGeneral/busquedaclientes.dart';
import 'package:necflislogymenu/menu.dart';
import 'package:necflislogymenu/widgets/info_card.dart';


class BusquedaGen extends StatefulWidget {
  const BusquedaGen({Key key}) : super(key: key);

  @override
  _BusquedaGenState createState() => _BusquedaGenState();
}

const Clientes = "Buscar/Listar Clientes";
const Planes = "Buscar/Listar Planes";
const Pago = "Buscar/Listar Pagos";
const Plantilla1 = "Buscar/Listar Categorias";
const Plantilla2 = "Buscar/Listar Generos";
const Plantilla3 = "Buscar/Listar Contenido";


class _BusquedaGenState extends State<BusquedaGen> {
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
                  "Busqueda",
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
                    text: Clientes, icon: FontAwesomeIcons.portrait, onPressed: () async {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BusquedaClientes()));}),
                InfoCard(
                    text: Planes, icon: FontAwesomeIcons.magic, onPressed: () async {}),
                InfoCard(
                    text: Pago,
                    icon: FontAwesomeIcons.handHoldingUsd,
                    onPressed: () async {}),
                InfoCard(
                    text: Plantilla1, icon: FontAwesomeIcons.photoVideo, onPressed: () async {}),
                InfoCard(
                    text: Plantilla2, icon: FontAwesomeIcons.film, onPressed: () async {}),
                InfoCard(
                    text: Plantilla3, icon: FontAwesomeIcons.dragon, onPressed: () async {}),
              ],
            ),
          ),
        ));
  }
}
