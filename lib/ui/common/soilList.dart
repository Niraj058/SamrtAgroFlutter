import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/data/models/soilData.dart';
import 'package:flutter_app/ui/app/app_drawer.dart';
import 'package:flutter_app/ui/common/webservice.dart';


class SoilDataState extends State<SoilList> {

  List<SoilData> _soilInfo = List<SoilData>(); 

  @override
  void initState() {
    super.initState();
    _populatesoilInfo(); 
  }

  void _populatesoilInfo() {
   
    Webservice().load(SoilData.all).then((soilInfo) => {
      setState(() => {
        _soilInfo = soilInfo
      })
    });

  }

  ListTile _buildItemsForListView(BuildContext context, int index) {
      return ListTile(
        title: Text('Title :'+_soilInfo[index].title, style: TextStyle(fontSize: 18)), 
        subtitle: Text(_soilInfo[index].descrption, style: TextStyle(fontSize: 18)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soil Parameters"),
      ),
      drawer: AppDrawer(),
        body: ListView.builder(
          itemCount: _soilInfo.length,
          itemBuilder: _buildItemsForListView,
        )
      );
  }
}

class SoilList extends StatefulWidget {
  @override
  createState() => SoilDataState(); 
}