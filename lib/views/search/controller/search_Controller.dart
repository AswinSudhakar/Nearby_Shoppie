import 'package:get/get.dart';
import 'package:nearby_shoppiee/mock%20data/mockdata.dart';

class SearchControllerr extends GetxController {
  var SearchedList = <ProductModel>[].obs; // RxList<ProductModel>

  void searchProducts(String query) {
    if (query.isEmpty) {
      SearchedList.clear();
      Get.snackbar('Error', 'Please enter a search term');
      return;
    } else {
      print('Searched $query');
      SearchedList.value = products.where((product) {
        return product.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
      print('items found: ${SearchedList.map((item) => item.name).toList()}');
    }
  }
}
