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
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(150), // Adjust the radius as needed
              child: Image.asset(
                'assets/logo_ind.png',
                height: 50,
              ),
            ),
            SizedBox(width: 10), // Add some spacing between the logo and text
            Text(
              'INDIA INFRA',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.deepOrangeAccent, // Change the color of the leading icon (if present)
        ),
        backgroundColor: Colors.black,
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
                '#ConstructionZone', // Add the text here
                style: TextStyle(fontSize: 35,fontFamily: AutofillHints.streetAddressLevel4, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
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
                              radius: 50,
                              backgroundImage: AssetImage(
                                'assets/product${index + 1}.jpg',
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'an INDIA INFRA product',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'an INDIA INFRA product',
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
                '#India_Infra DEAL FOR PREMIUM', // Add the text here
                style: TextStyle(fontSize: 15,fontFamily: AutofillHints.streetAddressLevel4, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.deepOrangeAccent,
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
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Cart',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
