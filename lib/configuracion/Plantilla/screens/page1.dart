import 'package:flutter/material.dart';
import 'package:necflislogymenu/configuracion/Plantilla/widgets/textField.dart';

class Page1 extends StatelessWidget {
  // const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          TProgress(
            hintText: "Nombre (Pelicula/serie,etc)",
            prefix: Icon(Icons.person),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Descripcion",
            prefix: Icon(Icons.person),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Fecha",
            prefix: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
