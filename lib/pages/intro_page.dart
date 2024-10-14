import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Image.asset(
                'lib/images/nike.png', 
                height: 180,
                ),
            ),
            const SizedBox(height: 48),

            //title
            const Text(
              'Just Do It',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            //sub title
            const Text(
                 'Brand new sneakers and custom kicks made with premium quality',
                 style: TextStyle(
                   fontSize: 18,
                   color: Colors.grey,
                 ),
                 textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48,),

            //start new button
            GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                  ),
                ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(15),
                child: const Center(
                  child: Text(
                    "Shop Now", 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
                ),
            ),
            const SizedBox(height: 48,),
          ],
        ),
      ),
    );
  }
}