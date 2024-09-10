class ItemModel {
  final String sound;
  String? image;
  final String jpName;
  final String enName;
  ItemModel(
      {required this.sound,
      required this.jpName,
      required this.enName,
      this.image});
}
