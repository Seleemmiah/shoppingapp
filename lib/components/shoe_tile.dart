import 'package:flutter/material.dart';
import 'package:myapp_app/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 25,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // shoe pics
          Image.asset(shoe.imagePath)

          //description

          // price + details

          // cart button
        ],
      ),
    );
  }
}
