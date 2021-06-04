import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/configuracion/Plantilla/screens/page1.dart';
import 'package:necflislogymenu/configuracion/Plantilla/screens/page2.dart';
import 'package:necflislogymenu/configuracion/Plantilla/screens/page3.dart';
import 'package:necflislogymenu/configuracion/Plantilla/widgets/progress.dart';
import 'package:necflislogymenu/menu.dart';

class PlantillaBase extends StatefulWidget {
  const PlantillaBase({Key key}) : super(key: key);

  @override
  _PlantillaBaseState createState() => _PlantillaBaseState();
}

class _PlantillaBaseState extends State<PlantillaBase> {
  PFormController pformController;
  @override
  void initState() {

    super.initState();
    pformController = PFormController(3);
  }
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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

      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.black45],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FontAwesomeIcons.dAndD,
                          size: 60,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "NECFLIS",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                )
              ],
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
                          height: 500,
                          controller: pformController,
                          pages: [
                            Page1(),
                            Page2(),
                            Page3(),
                          ],
                          title: [
                            PTitle(
                              title: "Categorias",
                              subTitle: "Pelicula/Serie,etc",
                            ),
                            PTitle(
                              title: "Generos",
                              subTitle: "Terror, Comedia,etc",
                            ),
                            PTitle(
                              title: "Contenido",
                              subTitle: "Nombre de la pelicula o serie",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              pformController.prevPage();
              setState(() {

              });
            },
            child: Visibility(
              visible: pformController.currentPage != 0?true:false,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {
              pformController.nextPage();
              setState(() {

              });
            },
            child: Visibility(
              visible: pformController.currentPage == pformController.length-1?false:true,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
