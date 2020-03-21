import 'package:flutter/material.dart';
import 'package:flutter_app/data/models/NewsScreen.dart';
import 'package:flutter_app/ui/common/news_api.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    NetworkHelper networkHelper = NetworkHelper('http://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=3c7169a3091e485d957745e63b735da0');
      //'http://newsapi.org/v2/everything?q=bitcoin&from=2020-03-21&sortBy=publishedAt&apiKey=a04f7099a8f94a549d076e67e00481b7'
    var data = await networkHelper.getData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NewsScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
