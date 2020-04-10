import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/data/models/auth.dart';
import 'package:flutter_app/ui/app/Soil_main.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _auth = Provider.of<AuthModel>(context, listen: true);
    return Drawer(
      child: SafeArea(
        //color: Colors.grey[50],
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                //_auth.user.firstname + " " + _auth.user.lastname,
                "Niraj Shah",
                textScaleFactor: textScaleFactor,
                maxLines: 1,
              ),
              subtitle: Text(
                //_auth.user.id.toString(),
                "12",
                textScaleFactor: textScaleFactor,
                maxLines: 1,
              ),
               onTap: () {
                 Navigator.of(context).popAndPushNamed("/myaccount");
               },
            ),
             Divider(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                textScaleFactor: textScaleFactor,
              ),
              onTap: () {
                 Navigator.of(context).popAndPushNamed("/home");  
                 print("Break 0");
              },
            ), 
            ListTile(
              leading: Icon(Icons.cloud),
              title: Text(
                "Weather Forcast",
                textScaleFactor: textScaleFactor,
              ),
              onTap: () {
                 Navigator.of(context).popAndPushNamed("/weather");  
              },
            ),
            ListTile(
              leading: Icon(Icons.local_florist),
              title: Text(
                "Soil Info",
                textScaleFactor: textScaleFactor,
              ),
              onTap: () {
                  Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){  return Soil();
            }));
              },
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text(
                "News",
                textScaleFactor: textScaleFactor,
              ),
              onTap: () {
                 Navigator.of(context).popAndPushNamed("/news");  
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                textScaleFactor: textScaleFactor,
              ),
              onTap: () {
                Navigator.of(context).popAndPushNamed("/settings");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Logout',
                textScaleFactor: textScaleFactor,
              ),
              onTap: () => _auth.logout(),
            ),
          ],
        ),
      ),
    );
  }
}
