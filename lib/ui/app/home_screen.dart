import 'package:flutter/material.dart';
import 'package:flutter_app/data/models/use_card_child.dart';
import 'package:flutter_app/data/models/use_card_widget.dart';
import 'package:flutter_app/ui/app/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Home'),
    );
  }
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: UseCard(
                      routeId: "/weather",
                      cardChild: UseCardChild(
                        childIcon: 'assets/weed.png',
                        childText: "Crop Disease",
                      ),
                    ),
                  ),
                  Expanded(
                    child: UseCard(
                     // routeId: SuggestionScreen.id,
                      cardChild: UseCardChild(
                        childIcon: 'assets/doubt.png',
                        childText: "Crop Suggestion",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: UseCard(
                     routeId: "/soil",
                      cardChild: UseCardChild(
                        childIcon: 'assets/weather.png',
                        childText: "Soil Parameters",
                      ),
                    ),
                  ),
                  Expanded(
                    child: UseCard(
                     routeId: "/weather",
                      cardChild: UseCardChild(
                        childIcon: 'assets/forecast.png',
                        childText: "Weather Forecast",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: UseCard(
                      routeId: "/setting",
                      cardChild: UseCardChild(
                        childIcon: 'assets/settings.png',
                        childText: "Setting",
                      ),
                    ),
                  ),
                  Expanded(
                    child: UseCard(
                     // routeId: SuggestionScreen.id,
                      cardChild: UseCardChild(
                        childIcon: 'assets/avatar.png',
                        childText: "Profile",
                      ),
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}




