import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class MyAddressPage extends StatelessWidget {
  const MyAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomElevatedButton(
          label: 'Add New Address',
          backgroundColor: Colors.greenAccent,
          onPressed: () {},
        ),
      ),
      appBar: AppBar(title: CustomText(text: 'My Address', fontSize: 25)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              title: CustomText(text: 'Home'),
              subtitle: CustomText(text: 'abc house, bla bla bla,567 433'),
              trailing: Wrap(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  SizedBox(width: 8),
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                ],
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              title: CustomText(text: 'Work'),
              subtitle: CustomText(text: 'cde building, bla bla bla,127 323'),

              trailing: Wrap(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  SizedBox(width: 8),
                  IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                ],
              ),
            ),
            // Spacer(),
            // CustomElevatedButton(
            //   label: 'Add New Address',
            //   backgroundColor: Colors.greenAccent,
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
