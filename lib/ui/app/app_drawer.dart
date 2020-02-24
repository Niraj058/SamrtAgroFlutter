import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/data/models/auth.dart';
import 'package:flutter_login/ui/app/Weather.dart';
import 'package:provider/provider.dart';

import 'Soil.dart';
import 'Soil.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _auth = Provider.of<AuthModel>(context, listen: true);
    return Drawer(
      child: SafeArea(
        // color: Colors.grey[50],
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                _auth.user.firstname + " " + _auth.user.lastname,
                textScaleFactor: textScaleFactor,
                maxLines: 1,
              ),
              subtitle: Text(
                _auth.user.id.toString(),
                textScaleFactor: textScaleFactor,
                maxLines: 1,
              ),
              // onTap: () {
              //   Navigator.of(context).popAndPushNamed("/myaccount");
              // },
            ),
             Divider(),
            ListTile(
              leading: Icon(Icons.cloud),
              title: Text(
                "Weather",
                textScaleFactor: textScaleFactor,
              ),
              onTap: () {
                  Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){  return Weather();
            }));
              },
            ),
            ListTile(
              leading: Icon(Icons.local_florist),
              title: Text(
                "Soil",
                textScaleFactor: textScaleFactor,
              ),
              onTap: () {
                  Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context){  return Soil();
            }));
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
