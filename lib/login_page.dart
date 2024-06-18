//import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';
import 'package:demo/components/my_button.dart';
import 'package:demo/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  //sign in User functiom
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 39, 156, 235),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Icon(
                Icons.lock,
                size: 100,
              ),

              SizedBox(height: 30),

              Text(
                'Welcome, Sign up to Continue',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              //email Textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email Adress',
                obscureText: false,
              ),

              //password Textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Your password',
                obscureText: true,
              ),

              const SizedBox(height: 15),

              //Reset password option
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forgot Password?'),
                  ],
                ),
              ),

              const SizedBox(height: 5),

              //sign In Option

              MyButton(
                onTap: signUserIn,
              ),

              //sign up Option

              const SizedBox(height: 15),

              //Or continue with option
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Colors.green,
                      thickness: 0.5,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text('Or Continue With'),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.green,
                      thickness: 0.5,
                    )),
                  ],
                ),
              ),

              //Google Sign in Button

              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/images/images/image8-2.webp',
                      height: 30,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              //not a member? Register Now

              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Not a member?'),
                SizedBox(width: 4),
                Text(
                  'Register Now',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
