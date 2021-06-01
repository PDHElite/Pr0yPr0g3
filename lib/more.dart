import 'package:flutter/material.dart';
import 'package:necflislogymenu/widgets/info_card.dart';

class More extends StatefulWidget {
  const More({Key key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}
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
                  radius: 50,
                  backgroundImage: AssetImage('assets/nlogo.png'),
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
                    text: Clientes, icon: Icons.phone, onPressed: () async {}),
                InfoCard(
                    text: Planes, icon: Icons.web, onPressed: () async {}),
                InfoCard(
                    text: Pago,
                    icon: Icons.location_city,
                    onPressed: () async {}),
                InfoCard(
                    text: Plantilla, icon: Icons.email, onPressed: () async {}),
                InfoCard(
                    text: Equipo, icon: Icons.email, onPressed: () async {}),
              ],
            ),
          ),
        ));
  }
}
