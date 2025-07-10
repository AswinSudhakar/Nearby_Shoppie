// import 'package:flutter/material.dart';
// import 'package:nearby_shoppiee/core/widgets/text.dart';

// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: [
//           SizedBox(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   ClipOval(
//                     child: CircleAvatar(
//                       radius: 30,
//                       backgroundImage: NetworkImage(
//                         'https://static.vecteezy.com/system/resources/previews/009/354/850/non_2x/male-portrait-people-profile-perfect-for-social-media-and-business-presentations-user-interface-ux-graphic-and-web-design-applications-and-interfaces-illustration-vector.jpg',
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 10),
//                   Column(
//                     children: [
//                       CustomText(text: 'Aswin Thaliyil'),
//                       CustomText(text: ' +91 123456789'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Divider(thickness: 1),

//           Expanded(
//             child: ListView(
//               children: [
//                 _buildDrawerItem(
//                   icon: Icons.person,
//                   text: 'Profile',
//                   onTap: () {},
//                 ),

//                 _buildDrawerItem(
//                   icon: Icons.location_on,
//                   text: 'My Address',
//                   onTap: () {},
//                 ),
//                 _buildDrawerItem(
//                   icon: Icons.receipt_long,
//                   text: 'My Orders',
//                   onTap: () {},
//                 ),
//                 _buildDrawerItem(
//                   icon: Icons.shopping_bag,
//                   text: 'My Wishlst',
//                   onTap: () {},
//                 ),
//                 _buildDrawerItem(icon: Icons.chat, text: 'Chats', onTap: () {}),
//                 _buildDrawerItem(
//                   icon: Icons.store,
//                   text: 'Shops',
//                   onTap: () {},
//                 ),
//                 _buildDrawerItem(
//                   icon: Icons.logout,
//                   text: 'Logout',
//                   onTap: () {},
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDrawerItem({
//     required IconData icon,
//     required String text,
//     required VoidCallback onTap,
//   }) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.black),
//       title: Text(
//         text,
//         style: TextStyle(fontFamily: 'Crimson-Bold', fontSize: 18),
//       ),
//       onTap: onTap,
//     );
//   }

//   void _navigateTo(BuildContext context, Widget page) {
//     Navigator.pop(context);
//     Navigator.push(context, MaterialPageRoute(builder: (context) => page));
//   }
// }
