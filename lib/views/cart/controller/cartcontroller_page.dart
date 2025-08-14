import 'package:get/get.dart';
import 'package:nearby_shoppiee/mock%20data/mockdata.dart';

class Cartcontroller extends GetxController {
  // Cart related variables and methods can be defined here
  var cartItems =
      <ProductModel>[].obs; // Example observable list for cart items

  void addToCart(ProductModel item) {
    final cartproducts = products
        .where((product) => product.id == item.id)
        .toList();
    cartItems.addAll(cartproducts);
    print('Item added to cart: ${item.name}');
    print('Current items: ${cartItems.map((p) => p.name).toList()}');
  }

  void removeFromCart(ProductModel item) {
    cartItems.remove(item);
  }

  void clearCart() {
    cartItems.clear();
  }
}
