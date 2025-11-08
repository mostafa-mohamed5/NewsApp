import 'package:flutter/material.dart';
import 'package:neww_app/widgets/category_list_view.dart';
import 'package:neww_app/widgets/news_list_view_builder.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News',style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.bold),),
           Text('Cloud',style: TextStyle(color: Colors.orange,fontSize: 27,fontWeight: FontWeight.bold),),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
  
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child:CategoryListView(), 
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          NewsListViewBuilder(
            catregort: "general",
          )
        ],
      ),
   


      )
      
    );
  }
}
