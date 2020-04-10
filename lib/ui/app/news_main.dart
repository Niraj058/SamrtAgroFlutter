import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/common/newsList.dart';

void main() => runApp(News());

class News extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
        NewsList()),
    );
  }

}