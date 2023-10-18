import 'package:flutter/material.dart';
import "login_register_page.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In',style:TextStyle(color: Colors.deepOrangeAccent,)),
          backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.deepOrangeAccent, // Change the color here
      ),
      ),
      body:Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/ind_smpl4.jpg'), // Add your background image path
            fit: BoxFit.cover,
            ),
          ),

        child :Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(150), // Adjust the radius as needed
                  child: Image.asset('assets/logo_ind.png',
                  height: 100,
                  ),
                ),
              SizedBox(height: 20),
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
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginRegisterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(225, 95, 56, 23),
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
