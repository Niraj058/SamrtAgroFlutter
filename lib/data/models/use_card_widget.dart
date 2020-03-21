import 'package:flutter/material.dart';

class UseCard extends StatelessWidget {
  UseCard({
    @required this.cardChild, this.routeId});

  final Widget cardChild;
  final String routeId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
                 Navigator.of(context).popAndPushNamed(routeId);
               },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}