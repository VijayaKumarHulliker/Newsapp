import 'package:http/http.dart';
import 'package:newsapp/models/categories_news_model.dart';
import 'package:newsapp/models/news_channel_headlines_model.dart';
import 'package:newsapp/repository/news_repository.dart';

class NewsViewModel{

  final _rep = NewsRepository();
  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadLineApi(String channelName)async{

final response =await _rep.fetchNewsChannelHeadLineApi( channelName);

return response;

  }


  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category)async{

  final response =await _rep.fetchCategoriesNewsApi( category);

  return response;

  }
}