import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/widgets/news_style.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (contex, index) {
      return NewsStyle(
        articleModel: articles[index],
      );
    }));
  }
}
