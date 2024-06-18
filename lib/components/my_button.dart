// No import statement needed
import 'package:demo/sign_up.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function() onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUp()),
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(5)),
        child: const Center(
            child: Text(
          'Sign up',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
