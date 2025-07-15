import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            NewsListBuilder(category: "general"),
          ],
        ),
        // Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(height: 20),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
