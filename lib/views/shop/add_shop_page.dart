import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class AddShopPage extends StatelessWidget {
  const AddShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(text: 'Scan QR Code', fontSize: 20),
            CustomText(text: 'place the QR code inside the frame to scan'),

            SizedBox(
              height: 330,
              child: Image.network(
                'https://static.vecteezy.com/system/resources/previews/004/996/077/original/qr-code-scanning-qr-code-reader-app-concept-icon-recognition-or-reading-qr-code-in-flat-style-green-and-blue-scanner-application-line-icon-illustration-vector.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
