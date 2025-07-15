import 'package:flutter/material.dart';
import 'package:news_app/Views/detail_view.dart';
import 'package:news_app/models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(newsUrl: articleModel.url),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            //border بدل container
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: articleModel.image ?? '',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget:
                  (context, url, error) =>
                      Icon(Icons.image_not_supported, size: 200),
            ),
            // Image.network(
            //   articleModel.image ??
            //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrjp5jjw8oTsE0TUtUJuo0ahese0svE0JV2Q&s",
            //   height: 200,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
          ),
          SizedBox(height: 12),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(
            articleModel.subTitle ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
