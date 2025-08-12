import 'package:get/get.dart';
import 'package:nearby_shoppiee/mock%20data/mockdata.dart';
// import 'package:nearby_shoppiee/views/product/product/model/product_model.dart';

// Assuming ProductModel is defined and products list is your mock data

class CartController extends GetxController {
  var cartItems = <ProductModel>[].obs;
  @override
  void onInit() {
    super.onInit();
  }

  void addToCart(int productId) {
    final product = products.firstWhere(
      (p) => p.id == productId,
      orElse: () => throw Exception('Product not found'),
    );
    if (product != null) {
      cartItems.add(product);
      Get.snackbar('Added to Cart', '${product.name} added to your cart');
      print('Product added to cart: current cart items: ${cartItems.length}');
    } else {
      Get.snackbar('Error', 'Product not found');
    }
  }

  void removeFromCart(int productId) {
    cartItems.removeWhere((p) => p.id == productId);
  }
}
