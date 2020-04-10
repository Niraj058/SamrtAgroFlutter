import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/common/soilList.dart';

void main() => runApp(Soil());

class Soil extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Soil Data",
      home: SoilList()
    );
  }

}