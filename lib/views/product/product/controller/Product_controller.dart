import 'package:get/get.dart';
import 'package:nearby_shoppiee/views/product/product/Service/product_service.dart';
import 'package:nearby_shoppiee/views/product/product/model/product_model.dart';

class ProductController extends GetxController {
  RxList<ProductModel> productList = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    GetProductList();
  }

  Future<void> GetProductList() async {
    final data = await ProductService().getProducts();

    productList.value = data ?? [];
    print('Product list loaded successfully: ${productList.length} items');
  }
}
