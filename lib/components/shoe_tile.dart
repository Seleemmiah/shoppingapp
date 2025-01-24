// ignore_for_file: prefer_interpolation_to_compose_strings

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // shoe pics
          Expanded(
            flex: 2,
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    shoe.imagePath,
                    // height: 100,
                    // width: 100,
                    fit: BoxFit.contain,
                  )),
            ),
          ),
          // Spacing after the image
          SizedBox(
            height: 5,
          ),

          //description
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          SizedBox(height: 5), // Add this for fine spacing above

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),

                    // space in between
                    SizedBox(
                      height: 5,
                    ),

                    //shoe price
                    Text(
                      '\$' + shoe.price,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),

                // add button
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ],
            ),
          )

          // cart button
        ],
      ),
    );
  }
}
