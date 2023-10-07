import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final Map<String, dynamic>? productDetails;

  CartPage({required this.productDetails});

  void _navigateTohome(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }

  void _navigateToShop(BuildContext context) {
    Navigator.pushNamed(context, '/shop');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
        backgroundColor: Colors.brown[800],
        automaticallyImplyLeading: false,
      ),
      body:  productDetails != null
          ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.brown[200],
              child: Text(
                '#Cart',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20), // Add some space
            Container(
              width: 450,
              height: 350,
              child: Image.asset(
                productDetails!['image'] ?? 'assets/placeholder_image.jpg',
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 10), // Add some space
            Text(
                ' ${productDetails!['name']}',
              style: TextStyle(fontSize: 20,fontFamily: AutofillHints.streetAddressLevel4, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            Text(
                ' \$${productDetails!['price']}',
              style: TextStyle(fontSize: 20,fontFamily: AutofillHints.streetAddressLevel4, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 20), // Add some space
          ],
        ) : Center(
        child: Text('No items in the cart'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 1) {
            _navigateToShop(context);
          }
          if (index == 0) {
            _navigateTohome(context);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.brown[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
            backgroundColor: Colors.brown[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Cart',
            backgroundColor: Colors.brown[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
            backgroundColor: Colors.brown[800],
          ),
        ],
      ),
    );
  }
}

