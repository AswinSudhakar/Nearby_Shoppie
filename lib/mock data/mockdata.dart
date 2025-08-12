// mock_data.dart

class Category {
  final int id;
  final String name;
  final String image;

  Category({required this.id, required this.name, required this.image});
}

class ProductModel {
  final int id;
  final String name;
  final String description;
  final int categoryId;
  final double price;
  final String unit;
  final int stock;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.categoryId,
    required this.price,
    required this.unit,
    required this.stock,
    required this.image,
  });
}

class Shop {
  final int id;
  final String name;
  final String description;
  final String image;
  final double lat;
  final double lng;

  Shop({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.lat,
    required this.lng,
  });
}

final List<Category> categories = [
  Category(
    id: 1,
    name: 'Fruits',
    image:
        'https://images.unsplash.com/photo-1574226516831-e1dff420e10b?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 2,
    name: 'Vegetables',
    image:
        'https://images.unsplash.com/photo-1547516508-0af1345c1eae?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 3,
    name: 'Bakery',
    image:
        'https://images.unsplash.com/photo-1505253210343-70a9b3d9626f?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 4,
    name: 'Dairy',
    image:
        'https://images.unsplash.com/photo-1589923188900-56c622b2f8b7?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 5,
    name: 'Beverages',
    image:
        'https://images.unsplash.com/photo-1510626176961-4b0b3e9b4e24?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 6,
    name: 'Snacks',
    image:
        'https://images.unsplash.com/photo-1556910103-1a2416e6c48e?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 7,
    name: 'Household',
    image:
        'https://images.unsplash.com/photo-1581579186217-cf013e8d9d96?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 8,
    name: 'Personal Care',
    image:
        'https://images.unsplash.com/photo-1576765607925-3438d11a3b39?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 9,
    name: 'Baby Products',
    image:
        'https://images.unsplash.com/photo-1544524320-28e7e8ca46f8?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 10,
    name: 'Frozen Foods',
    image:
        'https://images.unsplash.com/photo-1584791487936-5a3c34627a8e?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 11,
    name: 'Meat & Seafood',
    image:
        'https://images.unsplash.com/photo-1556741533-f6acd647d2fb?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 12,
    name: 'Stationery',
    image:
        'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 13,
    name: 'Electronics Accessories',
    image:
        'https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=80',
  ),
  Category(
    id: 14,
    name: 'Pet Supplies',
    image:
        'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8?auto=format&fit=crop&w=800&q=80',
  ),
];

final List<ProductModel> products = [
  // Fruits
  ProductModel(
    id: 1,
    name: 'Apple',
    description: 'Fresh red apples',
    categoryId: 1,
    price: 2.99,
    unit: 'per lb',
    stock: 100,
    image:
        'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 2,
    name: 'Banana',
    description: 'Sweet ripe bananas',
    categoryId: 1,
    price: 1.29,
    unit: 'per lb',
    stock: 150,
    image:
        'https://images.unsplash.com/photo-1574226516831-e1dff420e10b?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 3,
    name: 'Orange',
    description: 'Juicy oranges',
    categoryId: 1,
    price: 3.49,
    unit: 'per lb',
    stock: 80,
    image:
        'https://images.unsplash.com/photo-1575995423653-0f2cc361e9c7?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 31,
    name: 'Grapes',
    description: 'Fresh seedless grapes',
    categoryId: 1,
    price: 3.99,
    unit: 'per lb',
    stock: 90,
    image:
        'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=800&q=80',
  ),

  // Vegetables
  ProductModel(
    id: 4,
    name: 'Carrot',
    description: 'Fresh carrots',
    categoryId: 2,
    price: 1.99,
    unit: 'per lb',
    stock: 120,
    image:
        'https://images.unsplash.com/photo-1547516508-0af1345c1eae?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 5,
    name: 'Broccoli',
    description: 'Green broccoli heads',
    categoryId: 2,
    price: 2.79,
    unit: 'per lb',
    stock: 90,
    image:
        'https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 6,
    name: 'Spinach',
    description: 'Fresh spinach bunch',
    categoryId: 2,
    price: 1.50,
    unit: 'per bunch',
    stock: 100,
    image:
        'https://images.unsplash.com/photo-1547516508-0af1345c1eae?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 32,
    name: 'Tomatoes',
    description: 'Ripe red tomatoes',
    categoryId: 2,
    price: 1.89,
    unit: 'per lb',
    stock: 110,
    image:
        'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?auto=format&fit=crop&w=800&q=80',
  ),

  // Bakery
  ProductModel(
    id: 7,
    name: 'Whole Wheat Bread',
    description: 'Healthy whole wheat bread loaf',
    categoryId: 3,
    price: 3.49,
    unit: 'per loaf',
    stock: 50,
    image:
        'https://images.unsplash.com/photo-1505253210343-70a9b3d9626f?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 8,
    name: 'Croissant',
    description: 'Buttery croissant',
    categoryId: 3,
    price: 2.99,
    unit: 'each',
    stock: 70,
    image:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 33,
    name: 'Muffin',
    description: 'Blueberry muffin',
    categoryId: 3,
    price: 2.50,
    unit: 'each',
    stock: 60,
    image:
        'https://images.unsplash.com/photo-1563805042-7684c019e1cb?auto=format&fit=crop&w=800&q=80',
  ),

  // Dairy
  ProductModel(
    id: 9,
    name: 'Milk',
    description: 'Organic cow milk, 1 liter',
    categoryId: 4,
    price: 2.49,
    unit: 'per liter',
    stock: 80,
    image:
        'https://images.unsplash.com/photo-1589923188900-56c622b2f8b7?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 10,
    name: 'Cheddar Cheese',
    description: 'Aged cheddar cheese',
    categoryId: 4,
    price: 5.99,
    unit: 'per 200g',
    stock: 40,
    image:
        'https://images.unsplash.com/photo-1559561853-b65b6864ab8d?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 34,
    name: 'Yogurt',
    description: 'Strawberry flavored yogurt',
    categoryId: 4,
    price: 1.29,
    unit: 'per cup',
    stock: 100,
    image:
        'https://images.unsplash.com/photo-1590080877777-3cf7f4cd3b2e?auto=format&fit=crop&w=800&q=80',
  ),

  // Beverages
  ProductModel(
    id: 11,
    name: 'Orange Juice',
    description: '100% pure orange juice, 500ml',
    categoryId: 5,
    price: 3.99,
    unit: 'per bottle',
    stock: 70,
    image:
        'https://images.unsplash.com/photo-1510626176961-4b0b3e9b4e24?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 12,
    name: 'Coffee',
    description: 'Ground Arabica coffee 250g',
    categoryId: 5,
    price: 6.99,
    unit: 'per pack',
    stock: 60,
    image:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 35,
    name: 'Green Tea',
    description: 'Organic green tea bags, 20 count',
    categoryId: 5,
    price: 4.99,
    unit: 'box',
    stock: 80,
    image:
        'https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=800&q=80',
  ),

  // Snacks
  ProductModel(
    id: 13,
    name: 'Potato Chips',
    description: 'Salted potato chips, 150g',
    categoryId: 6,
    price: 2.50,
    unit: 'per pack',
    stock: 120,
    image:
        'https://images.unsplash.com/photo-1556910103-1a2416e6c48e?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 14,
    name: 'Chocolate Bar',
    description: 'Milk chocolate bar 100g',
    categoryId: 6,
    price: 1.99,
    unit: 'each',
    stock: 90,
    image:
        'https://images.unsplash.com/photo-1560184897-3450c5231d61?auto=format&fit=crop&w=800&q=80',
  ),

  // Household
  ProductModel(
    id: 15,
    name: 'Dishwashing Liquid',
    description: 'Lemon scented dish soap 500ml',
    categoryId: 7,
    price: 3.49,
    unit: 'per bottle',
    stock: 50,
    image:
        'https://images.unsplash.com/photo-1581579186217-cf013e8d9d96?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 16,
    name: 'Laundry Detergent',
    description: 'Powder detergent 2kg',
    categoryId: 7,
    price: 8.99,
    unit: 'per pack',
    stock: 30,
    image:
        'https://images.unsplash.com/photo-1590080877777-3cf7f4cd3b2e?auto=format&fit=crop&w=800&q=80',
  ),

  // Personal Care
  ProductModel(
    id: 17,
    name: 'Shampoo',
    description: 'Herbal shampoo 400ml',
    categoryId: 8,
    price: 4.99,
    unit: 'per bottle',
    stock: 70,
    image:
        'https://images.unsplash.com/photo-1576765607925-3438d11a3b39?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 18,
    name: 'Toothpaste',
    description: 'Fluoride toothpaste 100g',
    categoryId: 8,
    price: 2.99,
    unit: 'each',
    stock: 80,
    image:
        'https://images.unsplash.com/photo-1576765607925-3438d11a3b39?auto=format&fit=crop&w=800&q=80',
  ),

  // Baby ProductModels
  ProductModel(
    id: 19,
    name: 'Baby Diapers',
    description: 'Size 3 diapers, pack of 30',
    categoryId: 9,
    price: 12.99,
    unit: 'pack',
    stock: 40,
    image:
        'https://images.unsplash.com/photo-1544524320-28e7e8ca46f8?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 20,
    name: 'Baby Wipes',
    description: 'Gentle baby wipes, pack of 50',
    categoryId: 9,
    price: 4.99,
    unit: 'pack',
    stock: 60,
    image:
        'https://images.unsplash.com/photo-1544524320-28e7e8ca46f8?auto=format&fit=crop&w=800&q=80',
  ),

  // Frozen Foods
  ProductModel(
    id: 21,
    name: 'Frozen Peas',
    description: 'Frozen green peas 500g',
    categoryId: 10,
    price: 2.79,
    unit: 'per pack',
    stock: 70,
    image:
        'https://images.unsplash.com/photo-1584791487936-5a3c34627a8e?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 22,
    name: 'Frozen Pizza',
    description: 'Cheese pizza 400g',
    categoryId: 10,
    price: 5.99,
    unit: 'each',
    stock: 40,
    image:
        'https://images.unsplash.com/photo-1584791487936-5a3c34627a8e?auto=format&fit=crop&w=800&q=80',
  ),

  // Meat & Seafood
  ProductModel(
    id: 23,
    name: 'Chicken Breast',
    description: 'Boneless chicken breast 1 lb',
    categoryId: 11,
    price: 6.99,
    unit: 'per lb',
    stock: 50,
    image:
        'https://images.unsplash.com/photo-1556741533-f6acd647d2fb?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 24,
    name: 'Salmon Fillet',
    description: 'Fresh salmon fillet 1 lb',
    categoryId: 11,
    price: 12.99,
    unit: 'per lb',
    stock: 30,
    image:
        'https://images.unsplash.com/photo-1556741533-f6acd647d2fb?auto=format&fit=crop&w=800&q=80',
  ),

  // Stationery
  ProductModel(
    id: 25,
    name: 'Notebook',
    description: 'College ruled notebook',
    categoryId: 12,
    price: 1.99,
    unit: 'each',
    stock: 100,
    image:
        'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 26,
    name: 'Ballpoint Pen',
    description: 'Blue ink pen, pack of 5',
    categoryId: 12,
    price: 3.49,
    unit: 'pack',
    stock: 150,
    image:
        'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=800&q=80',
  ),

  // Electronics Accessories
  ProductModel(
    id: 27,
    name: 'USB Cable',
    description: '1m USB-C cable',
    categoryId: 13,
    price: 5.99,
    unit: 'each',
    stock: 80,
    image:
        'https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 28,
    name: 'Earphones',
    description: 'Wired earphones with mic',
    categoryId: 13,
    price: 9.99,
    unit: 'each',
    stock: 60,
    image:
        'https://images.unsplash.com/photo-1519389950473-47ba0277781c?auto=format&fit=crop&w=800&q=80',
  ),

  // Pet Supplies
  ProductModel(
    id: 29,
    name: 'Dog Food',
    description: 'Dry dog food 2kg',
    categoryId: 14,
    price: 15.99,
    unit: 'bag',
    stock: 40,
    image:
        'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8?auto=format&fit=crop&w=800&q=80',
  ),
  ProductModel(
    id: 30,
    name: 'Cat Litter',
    description: 'Clumping cat litter 5kg',
    categoryId: 14,
    price: 9.99,
    unit: 'bag',
    stock: 50,
    image:
        'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8?auto=format&fit=crop&w=800&q=80',
  ),
];

final List<Shop> shops = [
  Shop(
    id: 1,
    name: 'Fresh Market',
    description: 'Your local market for fresh fruits and veggies',
    image:
        'https://images.unsplash.com/photo-1506368249639-73a05d6f6488?auto=format&fit=crop&w=800&q=80',
    lat: 40.7128,
    lng: -74.0060,
  ),
  Shop(
    id: 2,
    name: 'Daily Groceries',
    description: 'Convenient store with all daily essentials',
    image:
        'https://images.unsplash.com/photo-1589923188900-56c622b2f8b7?auto=format&fit=crop&w=800&q=80',
    lat: 40.7138,
    lng: -74.0010,
  ),
  Shop(
    id: 3,
    name: 'Organic Farm Shop',
    description: 'Organic and natural farm products',
    image:
        'https://images.unsplash.com/photo-1498579809087-ef1e558fd1e0?auto=format&fit=crop&w=800&q=80',
    lat: 40.7100,
    lng: -74.0080,
  ),
  Shop(
    id: 4,
    name: 'Pet Paradise',
    description: 'Pet food and accessories',
    image:
        'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?auto=format&fit=crop&w=800&q=80',
    lat: 40.7090,
    lng: -74.0070,
  ),
];
