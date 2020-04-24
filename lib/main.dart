import 'package:flutter/material.dart';
import 'package:flutter_app/data/models/auth.dart';
import 'package:flutter_app/ui/app/Soil_main.dart';
import 'package:flutter_app/ui/app/home_screen.dart';
import 'package:flutter_app/ui/app/news_main.dart';
import 'package:flutter_app/ui/app/weather_main.dart';
import 'package:flutter_app/ui/common/crop_d.dart';
import 'package:flutter_app/ui/common/soil_table.dart';
import 'package:flutter_app/ui/lockedscreen/splash_screen.dart';
import 'package:persist_theme/persist_theme.dart';
import 'package:provider/provider.dart';

import 'ui/lockedscreen/profile.dart';
import 'ui/lockedscreen/settings.dart';
import 'ui/signin/newaccount.dart';
import 'ui/signin/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeModel _model = ThemeModel();
  final AuthModel _auth = AuthModel();

  @override
  void initState() {
    try {
      _auth.loadSettings();
    } catch (e) {
      print("Error Loading Settings: $e");
    }
    try {
      _model.init();
    } catch (e) {
      print("Error Loading Theme: $e");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeModel>.value(value: _model),
          ChangeNotifierProvider<AuthModel>.value(value: _auth),
        ],
        child: Consumer<ThemeModel>(
          builder: (context, model, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: model.theme,
            home: Consumer<AuthModel>(builder: (context, model, child) {
              if (model?.user != null) return SplashScreen();
              return LoginPage();
            }),
            routes: <String, WidgetBuilder>{
              "/main": (BuildContext context) => MyApp(),
              "/login": (BuildContext context) => LoginPage(),
              "/myaccount": (BuildContext context) => Home(),
              "/menu": (BuildContext context) => Home(),
              "/home": (BuildContext context) => HomeScreen(),
              "/settings": (BuildContext context) => SettingsPage(),
              "/create": (BuildContext context) => CreateAccount(),
              "/weather": (BuildContext context) => WeatherScreen(),
              "/soil":(BuildContext context) => TableExample(),
              "/cam":(BuildContext context) => Camera(),
              "/news":(BuildContext context) => News(),
              "/table":(BuildContext context) => Soil(),
            },
          ),
        ));
  }
}
