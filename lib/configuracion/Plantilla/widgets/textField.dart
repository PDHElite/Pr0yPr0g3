import 'package:flutter/material.dart';

class TProgress extends StatelessWidget {
  //const TProgress({Key key}) : super(key: key);

  String hintText;
  Widget prefix;
  TProgress({this.hintText,this.prefix});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        color: Colors.grey.withOpacity(.3),
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextFormField(

        decoration: InputDecoration(
          prefixIcon: prefix,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
