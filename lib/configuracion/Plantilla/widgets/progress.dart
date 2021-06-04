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
  List<Animation<double>> _annimationsOpavity;
  List<bool> activeColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controllers = List.generate(
        widget.pages.length,
        (index) => AnimationController(
            vsync: this,
            duration: Duration(milliseconds: 200),
            lowerBound: .1));
    _annimations = _controllers
        .map((_controller) =>
            Tween<double>(begin: .05, end: 1).animate(_controller))
        .toList();
    _annimationsOpavity = _controllers
        .map((_controller) =>
            Tween<double>(begin: 0, end: 1).animate(_controller))
        .toList();
    activeColor = List.generate(widget.pages.length, (index) => false);
  }

  controlColor(int index) {
    for (var i = 0; i < activeColor.length; i++) {
      if (index == i) {
        if (_controllers[index].isCompleted)
          _controllers[index].reverse();
        else
          _controllers[index].animateTo(1);
      } else {
        if (_controllers[i].isCompleted) _controllers[i].reverse();
      }
    }

    for (var i = 0; i <= index; i++) {
      activeColor[i] = true;
    }
    for (var i = index + 1; i < activeColor.length; i++) {
      activeColor[i] = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.pages.map((e) {
          int index = widget.pages.indexOf(e);
          return Stack(
            children: [
              if (index != widget.pages.length - 1)
                Container(
                  margin: EdgeInsets.only(
                    left: 2,
                    top: 25,
                  ),
                  child: SizeTransition(
                    sizeFactor: _annimations[index],
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 13,
                        top: 25,
                      ),
                      width: 3,
                      height: 250,
                      color: activeColor[index+1]?Colors.red.withOpacity(.9): Colors.grey,
                    ),
                  ),
                ),
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          controlColor(index);
                        },
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: activeColor[index]
                                ? Colors.red.withOpacity(.9)
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                          child: FadeTransition(
                        opacity: _annimationsOpavity[index],
                        child: SizeTransition(
                          sizeFactor: _annimations[index],
                          child: e,
                        ),
                      ))
                    ],
                  )
                ],
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
