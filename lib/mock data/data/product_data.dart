import 'package:nearby_shoppiee/mock%20data/models/productmodel.dart';

final List<ProductModel> products = [
  // Shop 1 - Fruits
  ProductModel(
    id: 1,
    name: 'Apple',
    description: 'Fresh red apples',
    categoryId: 1,
    shopId: 1,
    price: 2.99,
    unit: 'per lb',
    stock: 100,
    image:
        'https://thumbs.dreamstime.com/b/red-apple-isolated-white-background-71475088.jpg',
  ),
  ProductModel(
    id: 2,
    name: 'Banana',
    description: 'Sweet ripe bananas',
    categoryId: 1,
    shopId: 1,
    price: 1.29,
    unit: 'per lb',
    stock: 150,
    image:
        // 'https://static.vecteezy.com/system/resources/previews/022/059/000/non_2x/no-image-available-icon-vector.jpg',
        'https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=612x612&w=0&k=20&c=MAc8AXVz5KxwWeEmh75WwH6j_HouRczBFAhulLAtRUU=',
  ),
  ProductModel(
    id: 3,
    name: 'Orange',
    description: 'Juicy oranges',
    categoryId: 1,
    shopId: 1,
    price: 3.49,
    unit: 'per lb',
    stock: 80,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfXopDIH4Nml0qDeTMhwvTGQlO2dxsz2gm3g&s',
  ),
  ProductModel(
    id: 4,
    name: 'Grapes',
    description: 'Fresh seedless grapes',
    categoryId: 1,
    shopId: 1,
    price: 3.99,
    unit: 'per lb',
    stock: 90,
    image: 'https://www.collinsdictionary.com/images/full/grape_229112122.jpg',
  ),

  // Shop 1 - Vegetables
  ProductModel(
    id: 5,
    name: 'Carrot',
    description: 'Fresh carrots',
    categoryId: 2,
    shopId: 1,
    price: 1.99,
    unit: 'per lb',
    stock: 120,
    image:
        'https://media.istockphoto.com/id/1388403435/photo/fresh-carrots-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=XmrTb_nASc7d-4zVKUz0leeTT4fibDzWi_GpIun0Tlc=',
  ),
  ProductModel(
    id: 6,
    name: 'Broccoli',
    description: 'Green broccoli heads',
    categoryId: 2,
    shopId: 1,
    price: 2.79,
    unit: 'per lb',
    stock: 90,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8FUZJG3XNWoZnfaruVZHrXTfz31kQ0F2c1Q&s',
  ),
  ProductModel(
    id: 7,
    name: 'Spinach',
    description: 'Fresh spinach bunch',
    categoryId: 2,
    shopId: 1,
    price: 1.50,
    unit: 'per bunch',
    stock: 100,
    image:
        'https://www.greendna.in/cdn/shop/products/English_Spinach__67562.jpg?v=1607938113',
  ),
  ProductModel(
    id: 8,
    name: 'Tomatoes',
    description: 'Ripe red tomatoes',
    categoryId: 2,
    shopId: 1,
    price: 1.89,
    unit: 'per lb',
    stock: 110,
    image:
        'https://thumbs.dreamstime.com/b/tomato-slices-isolated-white-background-81021546.jpg',
  ),

  // Shop 2 - Bakery
  ProductModel(
    id: 9,
    name: 'White Bread',
    description: 'Soft fresh white bread loaf',
    categoryId: 3,
    shopId: 2,
    price: 2.49,
    unit: 'each',
    stock: 50,
    image:
        'https://media.istockphoto.com/id/92206322/photo/sliced-loaf-of-bread-isolated-on-white.jpg?s=612x612&w=0&k=20&c=YJ7EVbkl5OLKG6pf_i4agjh-MsGrn4htLKkprlttzHM=',
  ),
  ProductModel(
    id: 10,
    name: 'Croissant',
    description: 'Buttery flaky croissants',
    categoryId: 3,
    shopId: 2,
    price: 1.99,
    unit: 'each',
    stock: 40,
    image:
        'https://upload.wikimedia.org/wikipedia/commons/2/2a/Croissant-Petr_Kratochvil.jpg',
  ),
  ProductModel(
    id: 11,
    name: 'Muffin',
    description: 'Chocolate chip muffins',
    categoryId: 3,
    shopId: 2,
    price: 2.99,
    unit: 'pack',
    stock: 30,
    image:
        'https://static.vecteezy.com/system/resources/previews/028/137/296/large_2x/one-blueberry-muffin-white-background-photo.jpg',
  ),

  // Shop 2 - Dairy
  ProductModel(
    id: 12,
    name: 'Milk',
    description: 'Fresh whole milk',
    categoryId: 4,
    shopId: 2,
    price: 1.49,
    unit: 'liter',
    stock: 100,
    image:
        'https://media.istockphoto.com/id/1989575540/vector/milk-illustration.jpg?s=612x612&w=0&k=20&c=cqXsNyF1FIkdD7pKKO3rmPIfsKPLe7kVS25KmjIB2io=',
  ),
  ProductModel(
    id: 13,
    name: 'Cheese',
    description: 'Cheddar cheese block',
    categoryId: 4,
    shopId: 2,
    price: 4.99,
    unit: '200g',
    stock: 60,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT23iG3JSjkerwTjiejEuU1n0jXkS7nOIIegw&s',
  ),

  // Shop 2 - Beverages
  ProductModel(
    id: 14,
    name: 'Orange Juice',
    description: 'Freshly squeezed orange juice',
    categoryId: 5,
    shopId: 2,
    price: 3.49,
    unit: '1L',
    stock: 70,
    image:
        'https://media.istockphoto.com/id/1332975046/vector/realistic-detailed-3d-orange-juice-plastic-bottle-and-empty-template-set-vector.jpg?s=612x612&w=0&k=20&c=MFjLm_J6hd3dWFKjGGk8j00CGdMrDXJ-csoO_Ee2nUQ=',
  ),
  ProductModel(
    id: 15,
    name: 'Cola Drink',
    description: 'Chilled cola beverage',
    categoryId: 5,
    shopId: 2,
    price: 1.29,
    unit: '500ml',
    stock: 90,
    image:
        'https://frugivore-bucket.s3.amazonaws.com/media/package/img_one/2020-10-17/Coca_Cola_Soft_Drink_bottle_2l.jpg',
  ),

  // Shop 2 - Snacks
  ProductModel(
    id: 16,
    name: 'Potato Chips',
    description: 'Crispy salted potato chips',
    categoryId: 6,
    shopId: 2,
    price: 2.19,
    unit: 'bag',
    stock: 80,
    image:
        'https://thumbs.dreamstime.com/b/april-th-illustrative-editorial-image-lays-potato-chips-white-background-lays-potato-chips-white-115513013.jpg',
  ),
  ProductModel(
    id: 17,
    name: 'Chocolate Bar',
    description: 'Rich dark chocolate',
    categoryId: 6,
    shopId: 2,
    price: 1.49,
    unit: 'each',
    stock: 100,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZxB4Si_kynrMqeDkGotjVW34lHgI47OxiCg&s',
  ),

  // Shop 2 - Household
  ProductModel(
    id: 18,
    name: 'Dish Soap',
    description: 'Lemon scented dishwashing liquid',
    categoryId: 7,
    shopId: 2,
    price: 3.29,
    unit: '500ml',
    stock: 50,
    image:
        'https://static.vecteezy.com/system/resources/previews/011/067/346/non_2x/plastic-bottle-of-detergent-and-sponge-watercolor-style-dish-soap-bottle-clipart-bottle-with-detergent-clipart-illustration-isolated-on-white-background-sponge-washing-pad-cartoon-drawing-vector.jpg',
  ),

  // Shop 2 - Personal Care
  ProductModel(
    id: 19,
    name: 'Shampoo',
    description: 'Herbal anti-dandruff shampoo',
    categoryId: 8,
    shopId: 2,
    price: 5.99,
    unit: '400ml',
    stock: 60,
    image:
        'https://atlas-content-cdn.pixelsquid.com/stock-images/head-shoulders-shampoo-MxG2JLC-600.jpg',
  ),

  // Shop 2 - Baby Products
  ProductModel(
    id: 20,
    name: 'Baby Lotion',
    description: 'Gentle moisturizing lotion for babies',
    categoryId: 9,
    shopId: 2,
    price: 4.49,
    unit: '200ml',
    stock: 40,
    image:
        'https://digitalcontent.api.tesco.com/v2/media/ghs/f55a7517-6a17-46c3-a2bd-f21896910cce/0abe9a12-8415-448b-bb8a-52a793dc1588_750853040.jpeg?h=960&w=960',
  ),

  // Shop 2 - Frozen Foods
  ProductModel(
    id: 21,
    name: 'Frozen Pizza',
    description: 'Cheese burst frozen pizza',
    categoryId: 10,
    shopId: 2,
    price: 6.99,
    unit: 'pack',
    stock: 30,
    image:
        'https://t4.ftcdn.net/jpg/02/48/16/33/360_F_248163313_zlTapa5Hqt5Tnchqk2vesGyFt7wNE3j4.jpg',
  ),

  // Shop 3 - Meat & Seafood
  ProductModel(
    id: 22,
    name: 'Chicken Breast',
    description: 'Fresh skinless chicken breast',
    categoryId: 11,
    shopId: 3,
    price: 5.49,
    unit: 'per lb',
    stock: 50,
    image:
        'https://thumbs.dreamstime.com/b/raw-chicken-fillet-breast-isolated-white-background-raw-chicken-fillet-breast-isolated-white-background-175491153.jpg',
  ),
  ProductModel(
    id: 23,
    name: 'Salmon Fillet',
    description: 'Fresh Atlantic salmon',
    categoryId: 11,
    shopId: 3,
    price: 9.99,
    unit: 'per lb',
    stock: 40,
    image:
        'https://www.bbassets.com/media/uploads/p/l/800364596_1-fresho-atlantic-salmon-fillet.jpg',
  ),

  // Shop 3 - Stationery
  ProductModel(
    id: 24,
    name: 'Notebook',
    description: '200-page ruled notebook',
    categoryId: 12,
    shopId: 3,
    price: 2.99,
    unit: 'each',
    stock: 100,
    image:
        'https://imgs.search.brave.com/gmsoNbLHmD4Vu14dEcA7k9ioYtYNiMtjss8AkBYsuOQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/c2h1dHRlcnN0b2Nr/LmNvbS9pbWFnZS1w/aG90by9ub3RlYm9v/ay1wZW4taXNvbGF0/ZWQtb24td2hpdGUt/MjYwbnctMjE4Njcw/OTIyLmpwZw',
  ),
  ProductModel(
    id: 25,
    name: 'Ballpoint Pen',
    description: 'Pack of 10 blue pens',
    categoryId: 12,
    shopId: 3,
    price: 1.99,
    unit: 'pack',
    stock: 120,
    image:
        'https://c8.alamy.com/comp/2GG73XR/plastic-transparent-ballpoint-pen-with-blue-cap-isolated-on-white-background-2GG73XR.jpg',
  ),

  // Shop 3 - Electronics Accessories
  ProductModel(
    id: 26,
    name: 'USB Cable',
    description: '1m USB Type-C cable',
    categoryId: 13,
    shopId: 3,
    price: 3.99,
    unit: 'each',
    stock: 80,
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV01lV_KQB9ZfEeHTKNKQc6vZ4alidaHb17g&s',
  ),
  ProductModel(
    id: 27,
    name: 'Wireless Mouse',
    description: 'Ergonomic wireless mouse',
    categoryId: 13,
    shopId: 3,
    price: 12.99,
    unit: 'each',
    stock: 60,
    image:
        'https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/gldn-9413J0PP550K-VJU00039-Logitech-G502-Wireless-Mouse-b00?qlt=90&wid=1253&hei=705&extendN=0.12,0.12,0.12,0.12&bgc=FFFFFFFF&fmt=jpg',
  ),

  // Shop 4 - Pet Supplies
  ProductModel(
    id: 28,
    name: 'Dog Food',
    description: 'Dry dog food 2kg',
    categoryId: 14,
    shopId: 4,
    price: 15.99,
    unit: 'bag',
    stock: 40,
    image:
        'https://thumbs.dreamstime.com/b/puppy-bowl-dry-dog-food-isolated-white-background-70006967.jpg',
  ),
  ProductModel(
    id: 29,
    name: 'Cat Litter',
    description: 'Clumping cat litter 5kg',
    categoryId: 14,
    shopId: 4,
    price: 9.99,
    unit: 'bag',
    stock: 50,
    image:
        'https://media.istockphoto.com/id/1383192919/photo/blue-cat-litter-tray-isolated-on-white-with-grey-litter-and-a-scoop.jpg?s=612x612&w=0&k=20&c=Gd-aWFFih3XA0Ub10JNDL3YUH45Zj2cCsrzc6neyqxk=',
  ),
  ProductModel(
    id: 30,
    name: 'Pet Shampoo',
    description: 'Gentle shampoo for dogs and cats',
    categoryId: 14,
    shopId: 4,
    price: 6.49,
    unit: '250ml',
    stock: 35,
    image:
        'https://bluatlas.com/cdn/shop/files/102224_BluAtlasProduct_Dawson3088_low_SQUARE.png?v=1730763807&width=1946',
  ),
];
