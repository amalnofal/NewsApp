import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category, style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(slivers: [NewsListBuilder(category: category)]),
      ),
    );
  }
}
