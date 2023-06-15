class Product {
  final String id;
  final String image;
  final String name;
  final String price;

  const Product({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      price: json['price'],
    );
  }
}
