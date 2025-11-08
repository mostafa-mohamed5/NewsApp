import 'package:dio/dio.dart';
import 'package:neww_app/models/article_model.dart';

class NewsServices {
  
final Dio  dio;

  NewsServices({required this.dio});

Future <List<ArticleModel>> getNews({required String category})async{
  
  try {
  var response =await dio.get
  ('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=f85e7a2cb4284d67be095193b162de77');
   
  Map<String, dynamic> jsonData =response.data;
  
  
  List<dynamic> articles =jsonData['articles'];
  
  List<ArticleModel> articleList =[];
  
  for (var article in articles) {
  
   ArticleModel articleModel= ArticleModel.fromjson(article);
  
    articleList.add(articleModel);
  
  }
  
  return articleList;
}  catch (e) {
  return [];
}
 
 }

}