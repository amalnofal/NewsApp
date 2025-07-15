import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  // NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=9b88be7a113a4543a65e7fd256888c89&category=$category',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleslist = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          // source: Source(
          //   id: article['source']['id'],
          //   name: article['source']['name'],
          // ),
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
          url: article['url'],
        );
        articleslist.add(articleModel);
      }
      return articleslist;
    } catch (e) {
      return [];
    }
  }
}
