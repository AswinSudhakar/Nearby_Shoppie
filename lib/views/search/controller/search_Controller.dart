import 'package:get/get.dart';
import 'package:nearby_shoppiee/mock%20data/mockdata.dart';

class SearchController extends GetxController {
  // Add any necessary variables or methods for search functionality here

  List<ProductModel> SearchedList = <ProductModel>[].obs;

  void searchProducts(String query) {
    if (query.isEmpty) {
      Get.snackbar('Error', 'Please enter a search term');
      return;
    } else {
      SearchedList = products.where((product) {
        return product.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
  }
}
