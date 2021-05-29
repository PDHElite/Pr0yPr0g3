import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necflislogymenu/series.dart';

class menu extends StatefulWidget {

  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {

  int _selectedindex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> widegets = <Widget>
    [

      series(),
      Text("Search"),
      Text("Coming soon"),
      Text("Dowloads"),
      Text("More"),
    ];

    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red[800],
            currentIndex: _selectedindex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15
            ),
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15
            ),
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.home),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.search),
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.film),
                ),
                label: "Soon",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.download),
                ),
                label: "Downloads",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.bars),
                ),
                label: "More",
              ),
            ],
          ),

          body: Center(
            child: widegets[_selectedindex],
          )


      ),
    );
  }
}
