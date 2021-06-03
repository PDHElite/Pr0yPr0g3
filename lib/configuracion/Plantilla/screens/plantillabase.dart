import 'package:flutter/material.dart';
import 'package:necflislogymenu/configuracion/Plantilla/widgets/progress.dart';

class PlantillaBase extends StatefulWidget {
  const PlantillaBase({Key key}) : super(key: key);

  @override
  _PlantillaBaseState createState() => _PlantillaBaseState();
}

class _PlantillaBaseState extends State<PlantillaBase> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.black87],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          DraggableScrollableSheet(
              maxChildSize: .9,
              minChildSize: .5,
              initialChildSize: .6,
              builder: (ctx, controller) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: SingleChildScrollView(
                    controller: controller,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PForm(
                          pages: [
                            Text("Page 1"),
                            Text("Page 2"),
                            Text("Page 3"),
                          ],
                          title: [
                            PTitle(),
                            PTitle(),
                            PTitle(),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
