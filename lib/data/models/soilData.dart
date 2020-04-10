import 'dart:convert';
import 'package:flutter_app/ui/common/webservice.dart';

class SoilData {
  
  final String title; 
  final String descrption; 

  SoilData({this.title, this.descrption});

  factory SoilData.fromJson(Map<String,dynamic> json) {
    return SoilData(
      title: json['title'], 
      descrption: json['body'], 
    );
  
}

  static Resource<List<SoilData>> get all {
    
    return Resource(
      url: 'https://jsonplaceholder.typicode.com/posts',
      parse: (response) {
        Iterable list = json.decode(response.body); 
        return list.map((model) => SoilData.fromJson(model)).toList();
      }
    );

  }

}