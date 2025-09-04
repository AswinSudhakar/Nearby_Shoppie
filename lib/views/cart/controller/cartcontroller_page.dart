import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/mock%20data/models/productmodel.dart';
import 'package:nearby_shoppiee/views/cart/views/cart_page.dart';

// class Cartcontroller extends GetxController {
//   // Cart related variables and methods can be defined here
//   var cartItems = <ProductModel>[].obs;

//   final box = GetStorage();

//   @override
//   void onInit() {
//     super.onInit();
//     loadCartFromStorage();
//   }

//   void loadCartFromStorage() {
//     final savedItems = box.read<List>('cartItems') ?? [];
//     cartItems.value = savedItems
//         .map((item) => ProductModel.fromJson(Map<String, dynamic>.from(item)))
//         .toList();
//   }

//   void addToCart(ProductModel item) {
//     final cartproducts = products
//         .where((product) => product.id == item.id)
//         .toList();
//     cartItems.addAll(cartproducts);
//     box.write(
//       'cartItems',
//       cartItems.map((product) => product.toJson()).toList(),
//     );
//     Get.snackbar(
//       duration: Duration(milliseconds: 1100),
//       '',
//       '',
//       titleText: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [CustomText(text: 'Success')],
//       ),
//       messageText: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CustomText(text: '${item.name}  added to cart '),
//           ElevatedButton(
//             onPressed: () {
//               Get.to(() => Cart());
//             },
//             child: CustomText(text: 'Cart'),
//           ),
//         ],
//       ),
//       snackPosition: SnackPosition.BOTTOM,
//       margin: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
//       snackStyle: SnackStyle.FLOATING,
//       backgroundColor: Colors.greenAccent,
//       padding: EdgeInsets.all(8.r),
//     );
//   }

//   void removeFromCart(ProductModel item) {
//     cartItems.removeWhere((product) => product.id == item.id);

//     box.write(
//       'cartItems',
//       cartItems.map((product) => product.toJson()).toList(),
//     );

//     Get.snackbar(
//       duration: Duration(milliseconds: 900),
//       '',
//       '',
//       titleText: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [CustomText(text: 'Success')],
//       ),
//       messageText: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [CustomText(text: '${item.name}  Removed from Cart')],
//       ),
//       snackPosition: SnackPosition.BOTTOM,
//       margin: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
//       snackStyle: SnackStyle.FLOATING,
//       backgroundColor: const Color.fromARGB(255, 241, 97, 61),
//       padding: EdgeInsets.all(8.r),
//     );
//   }
// }

class Cartcontroller extends GetxController {
  var cartItems = <ProductModel>[].obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    loadCartFromStorage();
  }

  void loadCartFromStorage() {
    final savedItems = box.read<List>('cartItems') ?? [];
    cartItems.value = savedItems
        .map((item) => ProductModel.fromJson(Map<String, dynamic>.from(item)))
        .toList();
  }

  void addToCart(ProductModel item) {
    final index = cartItems.indexWhere((product) => product.id == item.id);

    if (index != -1) {
      // Already exists → increase quantity
      cartItems[index].quantity++;
      cartItems.refresh(); // force UI update
    } else {
      // First time → add with quantity = 1
      item.quantity = 1;
      cartItems.add(item);
    }

    // Persist
    box.write(
      'cartItems',
      cartItems.map((product) => product.toJson()).toList(),
    );

    Get.snackbar(
      '',
      '',
      duration: const Duration(milliseconds: 1100),
      titleText: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CustomText(text: 'Success')],
      ),
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: '${item.name} added to cart'),
          ElevatedButton(
            onPressed: () => Get.to(() => Cart()),
            child: CustomText(text: 'Cart'),
          ),
        ],
      ),
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: Colors.greenAccent,
      padding: EdgeInsets.all(8.r),
    );
  }

  void removeFromCart(ProductModel item) {
    final index = cartItems.indexWhere((product) => product.id == item.id);

    if (index != -1) {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--; // decrease
      } else {
        cartItems.removeAt(index); // remove if last one
      }
      cartItems.refresh();
    }

    // Persist
    box.write(
      'cartItems',
      cartItems.map((product) => product.toJson()).toList(),
    );

    Get.snackbar(
      '',
      '',
      duration: const Duration(milliseconds: 900),
      titleText: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CustomText(text: 'Success')],
      ),
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CustomText(text: '${item.name} removed from cart')],
      ),
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: const Color.fromARGB(255, 241, 97, 61),
      padding: EdgeInsets.all(8.r),
    );
  }
}
