import 'package:falcon_shop/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'login_register_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/background_video.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.play();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      Container(
        color: Colors.transparent, // Make the container transparent
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(150), // Adjust the radius as needed
                child: Image.asset(
                  'assets/logo_ind.png',
                  height: 150,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "INDIA INFRA",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 300,),
              Padding(
                padding: EdgeInsets.only(bottom: 50), // Add space at the bottom
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(225, 95, 56,23),
                    minimumSize: Size(200, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Set the border radius here
                    ),// Adjust the width and height as needed
                  ),
                  child: Text('Login / Sign-up',style:TextStyle(
                      fontSize: 23,) ,),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
      ),
    );
  }
}
//
