class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  // final Source? source;

  ArticleModel({
    // this.source,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      url: json['url'],
    );
  }
}

// class Source {
//   // اي ماب بنحولها لاوبجكت (Map)
//   final String id;
//   final String name;

//   Source({required this.id, required this.name});
// }
