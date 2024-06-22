class ProductModel {
  final int id;
  final String name;
  final double price;
  final String imagePath;
  ProductModel(
      {required this.imagePath,
      required this.price,
      required this.name,
      required this.id});
  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imagePath: json['image'],
    );
  }
}
