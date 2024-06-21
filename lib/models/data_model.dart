class DataModel {
  final String id;
  final String name;
  final String price;

  final String imagePath;
  //TODO : add the rest
  DataModel(
      {required this.imagePath,
      required this.price,
      required this.name,
      required this.id});
}
