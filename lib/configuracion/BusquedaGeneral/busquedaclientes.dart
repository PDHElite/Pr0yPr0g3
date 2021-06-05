import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/menu.dart';

class BusquedaClientes extends StatefulWidget {
  const BusquedaClientes({Key key}) : super(key: key);

  @override
  _BusquedaClientesState createState() => _BusquedaClientesState();
}

class _BusquedaClientesState extends State<BusquedaClientes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      prefixIcon: Icon(FontAwesomeIcons.search,color: Colors.red,),
                      hintText: "Juanito, Carlos, Giamatei ",
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
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, right: 40, left: 40),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text(
                          'Listar',
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
                          'Buscar',
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
        ),
      ),
    );
  }
}
