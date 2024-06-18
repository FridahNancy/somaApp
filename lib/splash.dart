import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  /*@override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Get Started Now! Sign up to Continue,',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Stack(
          children: [
            Center(
              child: Lottie.asset(
                'assets/animations/caterpilla.json',
                repeat: true,
              ),
            ),
            Lottie.asset(
              'assets/animations/confetti.json',
              repeat: true,
            ),
          ],
        ),
      ],
    );
  }
}/*Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image(
              image: AssetImage('lib/images/images/book pic.png'),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFF58CC02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  size: 80,
                ),
                Text(
                  'Welcome to Soma app',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/