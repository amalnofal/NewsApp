import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(articleModel: articles[index]),
        );
      }),
    );

    // ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: news.length,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 22),
    //       child: NewsTile(news: news[index]),
    //     );
    //   },
    // ); // هيحمل كله مره واحده فا هياثر ع الكفاءه
  }
}
