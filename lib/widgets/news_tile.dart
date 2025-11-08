import 'package:flutter/material.dart';
import 'package:neww_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          child: Image.network(
            articleModel.image?? "https://lightwidget.com/wp-content/uploads/localhost-file-not-found.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            ),
         ),
         SizedBox(
          height: 10,
         ),
         Text(articleModel.title ?? "",
         style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
         ),
         overflow: TextOverflow.ellipsis,
         maxLines: 2,
         ),
         SizedBox(
          height: 5,
         ),
         Text(articleModel.description?? "",
         style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.grey
         ),
         overflow: TextOverflow.ellipsis,
         maxLines: 2,
         )
      ],
    );
  }
}