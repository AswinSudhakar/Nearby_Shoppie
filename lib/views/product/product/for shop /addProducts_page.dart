import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for text fields
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final categoryIdController = TextEditingController();
  final shopIdController = TextEditingController();
  final priceController = TextEditingController();
  final unitController = TextEditingController();
  final stockController = TextEditingController();

  // For image storage
  File? imageFile; // Mobile/Desktop
  Uint8List? imageBytes; // Web

  Future<void> _pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      setState(() {
        if (kIsWeb) {
          imageBytes = result.files.first.bytes;
        } else {
          imageFile = File(result.files.single.path!);
        }
      });
    }
  }

  void _saveProduct() {
    if (_formKey.currentState!.validate()) {
      final product = {
        'id': int.tryParse(idController.text),
        'name': nameController.text,
        'description': descriptionController.text,
        'categoryId': int.tryParse(categoryIdController.text),
        'shopId': int.tryParse(shopIdController.text),
        'price': double.tryParse(priceController.text),
        'unit': unitController.text,
        'stock': int.tryParse(stockController.text),
        'image':
            imageFile?.path ??
            (imageBytes != null ? "Web image selected" : "No image"),
      };

      debugPrint("Product Saved: $product");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Product saved successfully!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Product")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: idController,
                  decoration: const InputDecoration(labelText: "Product ID"),
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? "Enter ID" : null,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: "Name"),
                  validator: (v) => v!.isEmpty ? "Enter product name" : null,
                ),
                TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(labelText: "Description"),
                  validator: (v) => v!.isEmpty ? "Enter description" : null,
                ),
                TextFormField(
                  controller: categoryIdController,
                  decoration: const InputDecoration(labelText: "Category ID"),
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? "Enter categoryId" : null,
                ),
                TextFormField(
                  controller: shopIdController,
                  decoration: const InputDecoration(labelText: "Shop ID"),
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? "Enter shopId" : null,
                ),
                TextFormField(
                  controller: priceController,
                  decoration: const InputDecoration(labelText: "Price"),
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? "Enter price" : null,
                ),
                TextFormField(
                  controller: unitController,
                  decoration: const InputDecoration(labelText: "Unit"),
                  validator: (v) => v!.isEmpty ? "Enter unit" : null,
                ),
                TextFormField(
                  controller: stockController,
                  decoration: const InputDecoration(labelText: "Stock"),
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? "Enter stock" : null,
                ),

                const SizedBox(height: 20),

                // Image picker
                GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: imageFile != null
                          ? Image.file(imageFile!)
                          : imageBytes != null
                          ? Image.memory(imageBytes!)
                          : const Text("Tap to select image"),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                ElevatedButton.icon(
                  onPressed: _saveProduct,
                  icon: const Icon(Icons.save),
                  label: const Text("Save Product"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
