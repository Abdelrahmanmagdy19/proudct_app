class ProudectModel {
  final String image;
  final String category;
  final num price;

  const ProudectModel({
    required this.image,
    required this.category,
    required this.price,
  });
  factory ProudectModel.fromJson(json) {
    return ProudectModel(
      image: json['image'],
      category: json['category'],
      price: json['price'],
    );
  }
}
