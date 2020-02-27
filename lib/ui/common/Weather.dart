import 'package:flutter/material.dart';
import 'package:flutter_app/data/models/WeatherData.dart';
import 'package:intl/intl.dart';

class Weather extends StatelessWidget {
  final WeatherData weather;

  Weather({Key key, @required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weather.name),
        Text(weather.main, style: new TextStyle(fontSize: 29.0)),
        Text('${weather.temp.toString()}°C',style: new TextStyle(fontSize: 50.0)),
        Image.network('https://openweathermap.org/img/w/${weather.icon}.png'),
        Text(new DateFormat.yMMMd().format(weather.date)),
        Text(new DateFormat.Hm().format(weather.date)),
      ],
    );
  }
}