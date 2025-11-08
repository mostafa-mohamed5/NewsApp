
import 'package:flutter/material.dart';

import 'package:neww_app/views/home_page.dart';

void main(){
 
  runApp(news_app());
}
class news_app extends StatelessWidget {
  const news_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}