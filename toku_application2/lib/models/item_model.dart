class ItemModel {
  final String? image;
  final String enText;
  final String jpText;
  final String sound;

  const ItemModel(
      {required this.enText,
      required this.jpText,
      required this.sound,
      this.image});
}
