import 'package:nearby_shoppiee/mock%20data/models/productmodel.dart';

enum UserType { customer, shop }

class UserModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final UserType userType;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.userType,
  });
}

class CustomerModel extends UserModel {
  final String address;

  CustomerModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required this.address,
  }) : super(userType: UserType.customer);
}

class ShopModel extends UserModel {
  final String shopName;
  final String shopDescription;
  final List<String> shopPhotos;
  final List<ProductModel> products;

  ShopModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required this.shopName,
    required this.shopDescription,
    required this.shopPhotos,
    required this.products,
  }) : super(userType: UserType.shop);
}
