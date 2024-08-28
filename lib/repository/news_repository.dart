import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:newsapp/models/categories_news_model.dart';
import 'package:newsapp/models/news_channel_headlines_model.dart';
class NewsRepository{

   Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadLineApi(String channelName)async{
    String url = "https://newsapi.org/v2/top-headlines?sources=${channelName}&apiKey=1138f21e1158494a88165c37fa408c88";

    final response =await http.get(Uri.parse(url));

    if (response.statusCode==200){
        final body = jsonDecode(response.body);
        return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception('Error');

   }

   Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category)async{
    String url = "https://newsapi.org/v2/everything?q=${category}&apiKey=1138f21e1158494a88165c37fa408c88";

    final response =await http.get(Uri.parse(url));

    if (response.statusCode==200){
        final body = jsonDecode(response.body);
        return CategoriesNewsModel.fromJson(body);
    }
    throw Exception('Error');

   }

}