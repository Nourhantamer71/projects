class ArticleModel {
  final String? image;
  final String title;
  final String descraption;

  ArticleModel({
    required this.image,
    required this.title,
    required this.descraption,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        title: json['title'],
        descraption: json['descraption'],
        image: json['image']);
  }
}
