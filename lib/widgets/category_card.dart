import 'package:flutter/material.dart';
import 'package:news_app/Views/category_view.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: category.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
