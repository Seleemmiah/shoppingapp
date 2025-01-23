import 'package:flutter/material.dart';
//import 'package:myapp_app/pages/notification_widget.dart';
import '../components/bottom_nav.dart';
import 'cart_page.dart';
import 'notification_widget.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index controls the bottom bar
  int _selectedIndex = 0;

  // this function updates our selected index when the user tap on the selected bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // this method add notification button
  // void addNotification() {
  //   setState(() {
  //     notifictaionCount++;
  //   });
  // }

  // pages to display
  final List<Widget> _pages = [
    // Shop(),
    ShopPage(),
    // Cart(),
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Icon(Icons.menu),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              NotificationWidget();
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'lib/images/nikelogo1.png',
                    color: Colors.white,
                    height: 240,
                  ),
                ),

                // other pages
                // home
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // info
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // logout
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
