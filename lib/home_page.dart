import 'package:flutter/material.dart';
import 'cart_page.dart';
class HomePage extends StatelessWidget {
  void _navigateToShop(BuildContext context) {
    Navigator.pushNamed(context, '/shop');
  }
  void _navigateTocart(BuildContext context) {
    Navigator.pushNamed(context, '/cart');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FALCON SHOPPER'),
        backgroundColor: Colors.brown[800],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/home_banner.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '#Deals Today', // Add the text here
                style: TextStyle(fontSize: 45,fontFamily: AutofillHints.streetAddressLevel4, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 300,
                            height: 300,
                            child: CircleAvatar(
                              radius: 150,
                              backgroundImage: AssetImage(
                                'assets/product${index + 1}.jpg',
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Printed Fashion',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Artistic models in premium',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              _navigateToShop(context);
                            },
                            child: Text('Buy'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20), // Add some space between each product
                  ],
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '#falcon_2023 DEAL FOR PREMIUM', // Add the text here
                style: TextStyle(fontSize: 15,fontFamily: AutofillHints.streetAddressLevel4, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            _navigateToShop(context);
          }
          if (index == 2) {
            _navigateTocart(context);
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
