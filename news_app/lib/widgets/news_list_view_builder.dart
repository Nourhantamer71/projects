import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/circular_progress.dart';
import 'package:news_app/widgets/eror_mesage.dart';
import 'package:news_app/widgets/news_list.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
  
    super.initState();
    // كتبت widet.category عشان اقدر اعمل اكسيس ليها
    future = NewsServices(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: ErorMesage(),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgress(),
              ),
            );
          }
        });
   
   // old code
    // return isLoading
    //     ? const SliverFillRemaining(
    //         child: Center(NewsServices(Dio()).getGeneralNews()
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsList(
    //             articles: articles,
    //           )
    //         : const SliverToBoxAdapter(
    //             child: Text('there was an error'),
    //           );
  }
}


