import 'package:flutter/material.dart';

import 'home_page.dart';

//import 'home_page.dart';
//import 'package:shopping_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Image.asset(
                  'lib/images/nikelogo1.png',
                  height: 240,
                ),
              ),

              const SizedBox(height: 40),

              //title
              Text(
                'Just Do It',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 40),

              //subtitle
              Text(
                'Brand new sneakers with custom design',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              //start shopping button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
