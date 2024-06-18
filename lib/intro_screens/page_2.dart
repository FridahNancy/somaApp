import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class introPage2 extends StatelessWidget {
  const introPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to Soma App!',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Center(
          child: Lottie.asset(
            'assets/animations/caterpilla.json',
            repeat: true,
          ),
        ),
      ], //children
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
