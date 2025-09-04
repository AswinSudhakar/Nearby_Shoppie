import 'package:nearby_shoppiee/mock%20data/models/productmodel.dart';

class CartItem {
  final ProductModel product;
  int quantity;
  int? price;

  CartItem({required this.product, this.quantity = 1, this.price});

  Map<String, dynamic> toJson() {
    return {'product': product.toJson(), 'quantity': quantity};
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      product: ProductModel.fromJson(
        Map<String, dynamic>.from(json['product']),
      ),
      quantity: json['quantity'],
    );
  }
}
