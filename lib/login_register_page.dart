import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page.dart';

class LoginRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login',style:TextStyle(color: Colors.deepOrangeAccent,)),
        backgroundColor: Colors.black, // Choco brown
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.user),
            onPressed: () {
              // Add user profile functionality
            },
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.deepOrangeAccent, // Change the color here
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login_background2.jpg'), // Add your background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  style: TextStyle(color: Colors.white), // Set text color
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.white), // Set label color
                    prefixIcon: Icon(FontAwesomeIcons.user, color: Colors.white), // Set icon color
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Set border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Set focused border color
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white), // Set text color
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white), // Set label color
                    prefixIcon: Icon(FontAwesomeIcons.lock, color: Colors.white), // Set icon color
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Set border color
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white), // Set focused border color
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                    minimumSize: Size(130, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),// Choco brown
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 20),),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Add functionality for registration
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white, // Set text color
                  ),
                  child: Text('Register',style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
