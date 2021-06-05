import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/configuracion/Plantilla/widgets/textField.dart';
import 'package:necflislogymenu/menu.dart';

class Page3 extends StatelessWidget {
  // const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          TProgress(
            hintText: "Nombre de la pelicula o serie",
            prefix: Icon(FontAwesomeIcons.dragon),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Resumen",
            prefix: Icon(FontAwesomeIcons.fileAlt),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Que categoria tiene?",
            prefix: Icon(FontAwesomeIcons.photoVideo),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Que Genero tiene?",
            prefix: Icon(FontAwesomeIcons.film),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Fecha?",
            prefix: Icon(FontAwesomeIcons.calendarAlt),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 10.0, bottom: 10.0, right: 40, left: 40),
            child: Row(
              children: <Widget>[
                Expanded(
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    textColor: Colors.white,
                    child: Text(
                      '',
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => menu()));
                    },
                  ),
                ),
                Container(
                  width: 50.0,
                ),
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
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
