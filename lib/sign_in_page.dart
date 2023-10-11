import 'package:flutter/material.dart';
import "login_register_page.dart";

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
            image: AssetImage('assets/ind_smpl3.jpg'), // Add your background image path
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
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: true, // for password fields
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
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
