import 'package:flutter/material.dart';

class Searchcategory extends StatefulWidget {
  const Searchcategory({Key key}) : super(key: key);

  @override
  _SearchcategoryState createState() => _SearchcategoryState();
}

class _SearchcategoryState extends State<Searchcategory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(right: 25,left: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white
                ),

                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.search,size: 35,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text("Beastars, Aggretsuko, Little W...",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              smalltile(context,"Tamil  ",Colors.red,"English",Colors.green,"assets/bposter5.jpg","assets/bposter4.jpg"),
              SizedBox(height: 15,),
              smalltile(context,"Punjabi",Colors.orange,"English",Colors.yellow,"assets/bposter5.jpg","assets/bposter4.jpg"),
              SizedBox(height: 15,),
              smalltile(context,"Telugu",Colors.purple,"English",Colors.blueAccent,"assets/bposter5.jpg","assets/bposter4.jpg"),
              SizedBox(height: 15,),
              smalltile(context,"Tamil",Colors.red[200],"English",Colors.green[800],"assets/bposter5.jpg","assets/bposter4.jpg"),
              SizedBox(height: 15,),
              smalltile(context,"Tamil  ",Colors.red,"pop",Colors.green,"assets/bposter5.jpg","assets/bposter4.jpg"),
              SizedBox(height: 15,),
              smalltile(context,"Punjabi",Colors.orange,"English",Colors.yellow,"assets/bposter5.jpg","assets/bposter4.jpg"),
              SizedBox(height: 15,),
              smalltile(context,"Telugu",Colors.purple,"English",Colors.blueAccent,"assets/bposter5.jpg","assets/bposter4.jpg"),
              SizedBox(height: 15,),
              smalltile(context,"Tamil",Colors.red[200],"English",Colors.green[800],"assets/bposter5.jpg","assets/bposter4.jpg"),


            ],
          ),
        ),
      ),
    );
  }

  Row smalltile(BuildContext context,String text,final clrs,String text2,final clrs2,String imgurl1,String imgurl2) {
    return Row(
      children: [
        Expanded(
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10,left: 25,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: clrs,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 10,left: 8),
                    child: Text(text,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                      ),
                    ),
                  ),
                  SizedBox(width: 4,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      transform: new Matrix4.identity()
                        ..rotateZ(15 * 3.1415927 / -160),
                      child: Image.asset(imgurl1,height: 60
                        ,width: 60,),
                    ),
                  ),


                ],
              ),
            )
        ),
        Expanded(
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10,left: 10,right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: clrs2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 10,left: 8),
                    child: Text(text2,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20
                      ),
                    ),
                  ),
                  SizedBox(width: 4,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      transform: new Matrix4.identity()
                        ..rotateZ(15 * 3.1415927 / -160),
                      child: Image.asset(imgurl2,height: 60
                        ,width: 60,),
                    ),
                  ),


                ],
              ),
            )
        ),




      ],
    );
  }
}
