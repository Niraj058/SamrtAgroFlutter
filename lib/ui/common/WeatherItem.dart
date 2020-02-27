import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter_app/data/models/WeatherData.dart';

class WeatherItem extends StatelessWidget {
  final WeatherData weather;

  WeatherItem({Key key, @required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(weather.name),
            Text(weather.main, style: new TextStyle( fontSize: 16.0)),
            Text('${weather.temp.toString()}°C',style: new TextStyle( fontSize: 24.0)),
            Image.network('https://openweathermap.org/img/w/${weather.icon}.png'),
            Text(new DateFormat.yMMMd().format(weather.date)),
            Text(new DateFormat.Hm().format(weather.date)),
          ],
        ),
      ),
    );
  }
}