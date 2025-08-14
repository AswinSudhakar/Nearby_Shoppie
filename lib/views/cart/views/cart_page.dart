import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';
import 'package:nearby_shoppiee/views/home/home_page.dart';
import 'package:nearby_shoppiee/views/orders/controller/cart_controller.dart';
import 'package:nearby_shoppiee/views/product/category/view/categories_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  String? selectedvalue;
  // final List<Map<String, String>> products = const [
  //   {"name": "Maida", "price": "67", "offerPrice": "50"},
  //   {"name": "Milk", "price": "32", "offerPrice": "28"},
  //   {"name": "Turmeric Powder", "price": "45", "offerPrice": "37"},
  // ];

  final CartController ccartcontroller = Get.find<CartController>();

  final List<String> items = [
    '8 AM-10 AM',
    '10 AM-11 AM',
    '11 AM-2 PMM',
    '2 PM-4 PM',
  ];
  final TextEditingController _dateController = TextEditingController();

  Future<void> _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        _dateController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: AppStrings.cart.tr,
          fontSize: 25,
          fontFamily: 'Crimson-Bold',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomText(text: AppStrings.products.tr, fontSize: 25),
              SizedBox(
                height: 450,
                child: Row(
                  children: [
                    Flexible(
                      child: Obx(
                        () => ListView.builder(
                          itemCount: ccartcontroller.cartItems.length,
                          itemBuilder: (context, index) {
                            final product = ccartcontroller.cartItems[index];
                            return ProductCard(
                              name: product.name,
                              price: product.price.toString(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              CustomElevatedButton(
                // textColor: Colors.black,
                label: AppStrings.addMoreProducts.tr,
                onPressed: () {
                  Get.to(() => CategoriesPage());
                },
                backgroundColor: Colors.greenAccent,
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey, thickness: 1),
              Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: AppStrings.expectedDateTime.tr,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              SizedBox(
                width: 180,
                height: 40,
                child: TextField(
                  controller: _dateController,

                  decoration: InputDecoration(
                    hintText: 'Select Date',
                    prefixIcon: IconButton(
                      onPressed: () {
                        _pickDate();
                      },
                      icon: Icon(Icons.calendar_month),
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 6,
                children: items.map((value) {
                  return ChoiceChip(
                    label: Text(value),
                    selectedColor: const Color.fromARGB(255, 152, 226, 245),
                    selected: selectedvalue == value,
                    onSelected: (selected) {
                      setState(() {
                        selectedvalue = selected ? value : null;
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.grey, thickness: 1),
              Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: CustomText(
                        text: AppStrings.deliveryLocation.tr,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  title: CustomText(text: 'Home'),
                  subtitle: CustomText(text: 'abc house, bla bla bla,567 433'),
                  trailing: Wrap(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: CustomText(text: 'Change'),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.grey, thickness: 1),
              SizedBox(height: 10),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: SizedBox(
              //     child: Row(
              //       children: [
              //         CircleAvatar(radius: 20),
              //         SizedBox(width: 10),
              //         CustomText(text: 'ABC Home'),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 221, 163),
                  borderRadius: BorderRadius.circular(15),
                ),

                height: 115,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Subtotal'),
                          CustomText(text: '362'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Delivery Charge'),
                          CustomText(text: '62'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: 'Total'),
                          CustomText(text: '432'),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  // textColor: Colors.black,
                  label: AppStrings.placeOrder.tr,
                  width: double.infinity,
                  onPressed: () {
                    Get.off(HomePage());
                  },
                  backgroundColor: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  final String name;
  final String price;

  const ProductCard({super.key, required this.name, required this.price});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final List<String> items1 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  String? selectedvalue1;

  String? selectedvalue2;

  final List<String> items2 = ['Kg', 'Ltr', 'Pcs', 'Box', 'Packet'];

  DropdownMenuItem<String?> buildmenuitems(String item) =>
      DropdownMenuItem(value: item, child: Text(item));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),

              // Product Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: widget.name,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 8),

                    Row(
                      children: [
                        Text(
                          '₹${widget.price}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        const SizedBox(width: 8),
                        // CustomText(
                        //   text: '₹${widget.offerPrice}',
                        //   fontSize: 17,
                        //   color: Colors.green.shade700,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        const SizedBox(width: 8),
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    //     CustomText(text: '1'),
                    //     IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    //   ],
                    // ),
                    Row(
                      children: [
                        DropdownButton(
                          hint: Text('Quantity'),
                          value: selectedvalue1,
                          items: items1.map(buildmenuitems).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedvalue1 = value;
                            });
                          },
                        ),
                        DropdownButton(
                          hint: Text('type'),
                          value: selectedvalue2,
                          items: items2.map(buildmenuitems).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedvalue2 = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ProductCard extends StatefulWidget {
//   final String name;
//   final String price;
//   final String offerPrice;

//   const ProductCard({
//     super.key,
//     required this.name,
//     required this.price,
//     required this.offerPrice,
//   });

//   @override
//   State<ProductCard> createState() => _ProductCardState();
// }

// class _ProductCardState extends State<ProductCard> {
//   final List<String> quantities = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//     '10',
//   ];
//   final List<String> types = ['Kg', 'Ltr', 'Pcs', 'Dozen', 'Box'];

//   String selectedQuantity = '1';
//   String selectedType = 'Kg';

//   DropdownMenuItem<String> _buildMenuItem(String item) =>
//       DropdownMenuItem(value: item, child: Text(item));

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.network(
//                 'https://th.bing.com/th/id/OIP.ira6M4rbtxWoOsFGx-G5UAHaGw?w=196&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
//                 width: 100,
//                 height: 100,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(width: 16),

//             // Product Details
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Name
//                   CustomText(
//                     text: widget.name,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   const SizedBox(height: 6),

//                   // Price Row
//                   Row(
//                     children: [
//                       Text(
//                         '₹${widget.price}',
//                         style: const TextStyle(
//                           fontSize: 16,
//                           color: Colors.grey,
//                           decoration: TextDecoration.lineThrough,
//                         ),
//                       ),
//                       const SizedBox(width: 8),
//                       CustomText(
//                         text: '₹${widget.offerPrice}',
//                         fontSize: 17,
//                         color: Colors.green.shade700,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),

//                   // Quantity & Type selectors
//                   Row(
//                     children: [
//                       DropdownButton<String>(
//                         value: selectedQuantity,
//                         items: quantities.map(_buildMenuItem).toList(),
//                         onChanged: (value) {
//                           setState(() => selectedQuantity = value!);
//                         },
//                         underline: Container(),
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       DropdownButton<String>(
//                         value: selectedType,
//                         items: types.map(_buildMenuItem).toList(),
//                         onChanged: (value) {
//                           setState(() => selectedType = value!);
//                         },
//                         underline: Container(),
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),

//                   // // Add to Cart Button
//                   // Align(
//                   //   alignment: Alignment.centerRight,
//                   //   child: ElevatedButton(
//                   //     style: ElevatedButton.styleFrom(
//                   //       backgroundColor: Colors.greenAccent,
//                   //       shape: RoundedRectangleBorder(
//                   //         borderRadius: BorderRadius.circular(8),
//                   //       ),
//                   //       padding: const EdgeInsets.symmetric(
//                   //         horizontal: 16,
//                   //         vertical: 8,
//                   //       ),
//                   //     ),
//                   //     onPressed: () {
//                   //       print(
//                   //         "Added $selectedQuantity $selectedType of ${widget.name}",
//                   //       );
//                   //     },
//                   //     child: const Text(
//                   //       "Add to Cart",
//                   //       style: TextStyle(
//                   //         fontSize: 14,
//                   //         color: Colors.white,
//                   //         fontWeight: FontWeight.bold,
//                   //       ),
//                   //     ),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
