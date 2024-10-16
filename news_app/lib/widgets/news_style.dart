import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

class NewsStyle extends StatelessWidget {
  final ArticleModel articleModel;

  const NewsStyle({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image(
              height: 270,
              image: NetworkImage(
                  articleModel.image ?? 'https://via.placeholder.com/150'),
              fit: BoxFit.fill,
            ),

            // Image(
            //   height: 270,
            //   image: NetworkImage(articleModel.image ??),
            //   fit: BoxFit.fill,
            // ),
          ),
          const SizedBox(height: 8),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articleModel.title,
            style: const TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Text(
            maxLines: 2,
            articleModel.descraption,
            style: const TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
