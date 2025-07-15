import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(image: "assets/sports.jpg", categoryName: "Sports"),
    CategoryModel(image: "assets/business.jpg", categoryName: "Business"),
    CategoryModel(image: "assets/technology.jpg", categoryName: "Technology"),
    CategoryModel(image: "assets/health.jpg", categoryName: "Health"),
    CategoryModel(image: "assets/science.jpg", categoryName: "Science"),
    CategoryModel(image: "assets/fun.jpg", categoryName: "Entertainment"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
