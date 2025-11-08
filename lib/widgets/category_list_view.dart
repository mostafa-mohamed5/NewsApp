import 'package:flutter/material.dart';
import 'package:neww_app/models/category_model.dart';
import 'package:neww_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

final List<CategoryModel> categories = const [
  CategoryModel(categoryName: 'Business', image: 'assets/business.avif'),
  CategoryModel(categoryName: 'entertainment', image: 'assets/entertaiment.avif'),
  CategoryModel(categoryName: 'General', image: 'assets/general.avif'),
  CategoryModel(categoryName: 'Health', image: 'assets/health.avif'),
  CategoryModel(categoryName: 'Science', image: 'assets/science.avif'),
  CategoryModel(categoryName: 'Sports', image: 'assets/sports.avif'),
  CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpeg'),
  
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(    
          physics: BouncingScrollPhysics(),    
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
      );
  }
}