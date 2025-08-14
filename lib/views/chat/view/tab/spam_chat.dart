import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/core/widgets/text.dart';

class SpamChat extends StatelessWidget {
  const SpamChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: 'No spam messages here!',
        fontSize: 20,
        color: Colors.grey,
      ),
    );
  }
}
