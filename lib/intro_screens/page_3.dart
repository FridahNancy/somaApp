import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class introPage3 extends StatelessWidget {
  const introPage3({super.key});

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
}
/*Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Soma app',
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}*/
