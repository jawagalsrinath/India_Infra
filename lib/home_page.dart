import 'package:flutter/material.dart';
import 'cart_page.dart';
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<DrawerControllerState> _drawerKey = GlobalKey();
class HomePage extends StatelessWidget {
  void _navigateTohome(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }
  void _navigateToPlumbingPiping(BuildContext context) {
    Navigator.pushNamed(context, '/plumbing_piping');
  }
  void _navigateToTilingPainting(BuildContext context) {
    Navigator.pushNamed(context, '/tiling_painting');
  }
  void _navigateTocart(BuildContext context) {
    Navigator.pushNamed(context, '/cart');
  }

  void _navigateToShop(BuildContext context) {
    Navigator.pushNamed(context, '/shop');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 45),
            ClipRRect(
              borderRadius: BorderRadius.circular(150), // Adjust the radius as needed
              child: Image.asset(
                'assets/logo_ind.png',
                height: 50
              ),
            ),
            SizedBox(width: 7), // Add some spacing between the logo and text
            Text(
              'INDIAN INFRA',
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
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Container(
        decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2), // Adjust the opacity for the glass effect
        image: DecorationImage(
        image: AssetImage('assets/background_image.jpg'), // Add your background image path here
        fit: BoxFit.cover,
        ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("John Doe",style: TextStyle(
                  color: Colors.black)),
              accountEmail: Text("john.doe@example.com",style: TextStyle(
                  color: Colors.black)),
              currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_image.jpg'), // Add your image path here
            ),
            decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage('assets/drawer_banner.jpg'), // Add your image path here
            ),
            ),
      ),Divider(),
            ListTile(
              title: Text('Cements and Steel',style: TextStyle(
                color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                _navigateTohome(context);
              },
            ),
            ListTile(
              title: Text('Plumbing and Piping',style: TextStyle(
                  color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                _navigateToPlumbingPiping(context);
              },
            ),
            ListTile(
              title: Text('Tiling and Painting',style: TextStyle(
                  color: Colors.black)),
              onTap: () {
                Navigator.pop(context);
                _navigateToTilingPainting(context);
              },
            ),

          ],
        ),
      ),
      ),
      body:Container(
        color: Color.fromRGBO(65, 65, 65, 1), // Set the background color
        child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/home_banner.png', // Replace with your image path
              fit: BoxFit.cover,
              height: 300,
              width: 420,
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
                              radius: 70,
                              backgroundImage: AssetImage(
                                'assets/product${index + 1}.jpg',
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'an INDIAN INFRA product',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'an INDIAN INFRA product',
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
                '#Indian_Infra DEAL FOR PREMIUM', // Add the text here
                style: TextStyle(fontSize: 15,fontFamily: AutofillHints.streetAddressLevel4, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),

          ],
        ),
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
