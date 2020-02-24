import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(Weather());

class Weather extends StatefulWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Weather(title: 'Weather Data'),
    );
  }
  Weather({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Weather> {
  List data;

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("http://api.openweathermap.org/data/2.5/forecast?id=524901&APPID=310e898dd0d9ca312559312ba0183eb4"),
        headers: {"Accept": "application/json"});

    setState(() {
      data = json.decode(response.body);
    });
    return "Sucess";
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Forcast"),
      ),
      body: Center(
        child: getList(),
      ),
    );
  }

  Widget getList() {
    if (data == null || data.length < 1) {
      return Container(
        child: Center(
          child: Text("Please wait..."),
        ),
      );
    }
    return ListView.separated(
      itemCount: data?.length,
      itemBuilder: (BuildContext context, int index) {
        return getListItem(index);
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

  Widget getListItem(int i) {
    if (data == null || data.length < 1) return null;
    if (i == 0) {
      return Container(
        margin: EdgeInsets.all(4),
        child: Center(
          child: Text(
            "Weather",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }

    return Container(
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            data[i]['list']['main'].toString(),
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}