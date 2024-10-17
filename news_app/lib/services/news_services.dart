import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://gnews.io/api/v4/top-headlines?apikey=b5acd8c3dbe1e80a1e2eafe178ea0d91&category=$category&country=us');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModle = ArticleModel.fromJson(article);
        articleList.add(articleModle);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
