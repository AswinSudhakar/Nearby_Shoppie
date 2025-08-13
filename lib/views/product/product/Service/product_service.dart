// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:logger/web.dart';
// import 'package:nearby_shoppiee/views/product/product/model/product_model.dart';

// class ProductService {
//   final client = http.Client();

//   Future<List<ProductModel>?> getProducts() async {
//     try {
//       final response = await client.get(
//         Uri.parse('https://fakestoreapi.com/products'),
//       );

//       if (response.statusCode == 200) {
//         final List<dynamic> jsonResponse = jsonDecode(response.body);
//         final List<ProductModel> data = jsonResponse
//             .map((json) => ProductModel.fromJson(json))
//             .toList();
//         return data;
//       } else {
//         Logger().i('Failed to load products: status code not 200');
//       }
//     } catch (e, stackTrace) {
//       Logger().i('Failed to load products: $e');
//       print(stackTrace);
//     }
//     return null;
//   }
// }
