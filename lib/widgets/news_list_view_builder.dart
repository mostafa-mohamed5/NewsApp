
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:neww_app/models/article_model.dart';

import 'package:neww_app/services/news_services.dart';
import 'package:neww_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
   NewsListViewBuilder({super.key, required this.catregort,});

 final String catregort;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

var future;
@override
  void initState() {

    super.initState();
 future= NewsServices(dio: Dio()).getNews(
  category: widget.catregort
 );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future:future,
      builder: (context, AsyncSnapshot)
      
    {
      if (AsyncSnapshot.hasData) {
  return  NewsListView(
   articles: AsyncSnapshot.data!
   );
}
else if(AsyncSnapshot.hasError){
  return SliverToBoxAdapter(
       child: Center(child: Errormessage()),
     ) ;
}else 
{
  return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
}
    });
 
   }
}

class Errormessage extends StatelessWidget {
  const Errormessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('oops there was an eror, try later');
  }
}

