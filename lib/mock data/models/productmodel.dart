class ProductModel {
  final int id;
  final String name;
  final String description;
  final int categoryId;
  final int shopId;
  final double price;
  final String unit;
  final int stock;
  final String image;
  int quantity;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.categoryId,
    required this.shopId,
    required this.price,
    required this.unit,
    required this.stock,
    required this.image,
    this.quantity = 1,
  });

  // Convert ProductModel → JSON (Map)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'categoryId': categoryId,
      'shopId': shopId,
      'price': price,
      'unit': unit,
      'stock': stock,
      'image': image,
    };
  }

  // Convert JSON (Map) → ProductModel
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      categoryId: json['categoryId'],
      shopId: json['shopId'],
      price: (json['price'] as num).toDouble(), // Ensures double
      unit: json['unit'],
      stock: json['stock'],
      image: json['image'],
    );
  }
}
