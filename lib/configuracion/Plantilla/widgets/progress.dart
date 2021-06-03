import 'package:flutter/material.dart';

class PForm extends StatefulWidget {
  //const PForm({Key key}) : super(key: key);

  final List<Widget> pages;
  final List<PTitle> title;

  PForm({this.pages, this.title});

  @override
  _PFormState createState() => _PFormState();
}

class _PFormState extends State<PForm> with TickerProviderStateMixin {
  List<AnimationController> _controllers;
  List<Animation<double>> _annimations;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: widget.pages.map((e) {
          int index = widget.pages.indexOf(e);
          return Stack(
            children: [
              if (index != widget.pages.length - 1)
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    top: 37,
                  ),
                  width: 3,
                  height: 70,
                  color: Colors.grey,
                ),
              Container(
                width: 35,
                height: 35,
                color: Colors.grey,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class PTitle extends StatelessWidget {
  const PTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
