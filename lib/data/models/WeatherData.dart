  
class WeatherData {
  final DateTime date;
  final String name;
  final int temp;
  final String main;
  final String icon;

  WeatherData({this.date, this.name, this.temp, this.main, this.icon});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      date: new DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000, isUtc: false),
      name: json['name'],
      temp: (((json['main']['temp'])-32*5)/9).toInt(),
      main: json['weather'][0]['main'],
      icon: json['weather'][0]['icon'],
    );
  }
}