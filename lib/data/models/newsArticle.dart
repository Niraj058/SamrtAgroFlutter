import 'dart:convert';
import 'package:flutter_app/ui/common/webservice.dart';

import '../../constants.dart';

class NewsArticle {
  
  final String title; 
  final String descrption; 
  final String urlToImage; 

  NewsArticle({this.title, this.descrption, this.urlToImage});

  factory NewsArticle.fromJson(Map<String,dynamic> json) {
    return NewsArticle(
      title: json['title'], 
      descrption: json['description'], 
      urlToImage: json['urlToImage'] ?? Constants.news_image
    );
  
}

  static Resource<List<NewsArticle>> get all {
    
    return Resource(
      url: Constants.news_url,
      parse: (response) {
        final result = json.decode(response.body); 
        Iterable list = result['articles'];
        return list.map((model) => NewsArticle.fromJson(model)).toList();
      }
    );

  }

}