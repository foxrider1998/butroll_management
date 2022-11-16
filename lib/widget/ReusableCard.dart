import 'package:flutter/material.dart';

class ReusableTab extends StatelessWidget {
//stateless widgets are immutable

  ReusableTab({
    required this.text,
    required this.colour,
  });
  final Color colour;
  final String text;
//the final keyword
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Text(
        text,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: colour,
      ),
    );
  }
}

class FieldLiner extends StatelessWidget {
//stateless widgets are immutable

  FieldLiner({
    required this.subtance,
    required this.colour,
  });
  final Color colour;
  final String subtance;
//the final keyword
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Text(
        subtance,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: colour,
      ),
    );
  }
}
