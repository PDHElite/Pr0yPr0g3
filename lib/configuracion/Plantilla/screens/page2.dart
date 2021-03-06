import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/configuracion/Plantilla/widgets/textField.dart';

class Page2 extends StatelessWidget {
  // const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          TProgress(
            hintText: "Nombre (Terror/Comedia,etc)",
            prefix: Icon(FontAwesomeIcons.film),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Descripcion",
            prefix: Icon(FontAwesomeIcons.edit),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Fecha",
            prefix: Icon(FontAwesomeIcons.calendarAlt),
          ),
        ],
      ),
    );
  }
}
