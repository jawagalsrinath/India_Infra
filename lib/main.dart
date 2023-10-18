import 'package:falcon_shop/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_register_page.dart';
import 'shopping_page.dart';
import 'welcome_page.dart';
import 'cart_page.dart';
import 'plumbing_piping.dart';
import 'tiling_painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.brown[800], // Choco brown
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white), // Text color
        ),
      ),
      initialRoute: '/welcome', // Set initial route to the welcome page
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/home': (context) => HomePage(),
        '/plumbing_piping': (context) => PlumbingPiping(),
        '/tiling_painting': (context) => TilingPainting(),
        '/sign': (context) => SignInPage(),
        '/login': (context) => LoginRegisterPage(),
        '/shop': (context) => ShoppingPage(),  // Assuming this is a different page from ShoppingPage
        '/cart': (context) => CartPage(productDetails: ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? null),

      },
    );
  }
}
