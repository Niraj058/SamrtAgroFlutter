import 'package:flutter/material.dart';
import 'package:flutter_app/ui/app/app_drawer.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
       drawer: AppDrawer(),
    );
  }
}
