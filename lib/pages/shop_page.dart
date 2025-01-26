import 'package:flutter/material.dart';
import 'package:myapp_app/models/cart.dart';
import 'package:provider/provider.dart';
//import 'package:myapp_app/pages/notification_widget.dart';
import '../components/shoe_tile.dart';
import '../models/shoe.dart';

// import '../components/shoe_tile.dart';
// import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // a method to add shoes
  final List<Shoe> shoes = [
    Shoe(
      name: 'Nike Air Max 90',
      price: '150',
      description: 'Comfortable and stylish',
      imagePath: 'lib/images/jordan1.JPG',
    ),

    // Add more Shoe objects
    Shoe(
      name: 'Nike Air Max Dn',
      price: '300',
      description: 'Iconic style, unparalleled comfort',
      imagePath: 'lib/images/jordan.JPG',
    ),

    Shoe(
      name: 'Nike Free Run 5.0',
      price: '225',
      description: 'Move naturally, feel unstoppable.',
      imagePath: 'lib/images/jordan1.JPG',
    ),

    Shoe(
      name: 'Nike Court Vision Low',
      price: '159',
      description: 'Walk on air, redefine your stride',
      imagePath: 'lib/images/jordan.JPG',
    ),
  ];

  // add to shoe to cart method
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user , when an item is successfully
    // added to cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Item successfully added!"),
              content: Text("Check your cart!"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search bar
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                // Notification Widget
                // NotificationWidget(),

                // message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    'Everyone flies..but some fly longer than others',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),

                // Hot picks
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending🔥',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // list of shoes for sale
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: shoes.length,
                    itemBuilder: (context, index) {
                      //get a shoe from shop list
                      Shoe shoe = value.getShoeList()[index];

                      return Container(
                        width: 330,
                        //height: 25,
                        margin: const EdgeInsets.symmetric(horizontal: 15),

                        child: ShoeTile(
                          onTap: () => addShoeToCart(shoe),
                          shoe: shoes[index],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 50.0,
                    right: 50.0,
                  ),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
                // Expanded(
                //   child: ListView.builder(
                //     itemBuilder: (context, index) {
                //       // create a shoe
                //       Shoe shoe = Shoe(
                //         name: 'Nike Air Max 90',
                //         price: '150',
                //         description: 'Comfortable and stylish',
                //         imagePath: 'lib/images/nike.JPG',
                //       );
                //       return ShoeTile(
                //         shoe: shoe,
                //       );
                //     },
                //   ),
                // )
              ],
            ));
  }
}
