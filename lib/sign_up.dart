import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _city = '';
  String _firstName = '';
  String _secondName = '';
  String _phoneNumber = '';
  File? _profilePicture;

  Future<void> _pickProfilePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profilePicture = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF58CC02),
      appBar: AppBar(
        title: Text('Sign Up here'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //First Name
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white, // White background
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your First Name';
                  }
                  return null;
                },
                onChanged: (value) {
                  _firstName = value;
                },
              ),

              SizedBox(height: 16.0),

              //Second Name

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Second Name',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Second Name';
                  }
                  return null;
                },
                onChanged: (value) {
                  _secondName = value;
                },
              ),

              SizedBox(height: 16.0),

              //Phone Number

              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your Phone Number';
                  }
                  return null;
                },
                onChanged: (value) {
                  _phoneNumber = value;
                },
              ),

              SizedBox(height: 16.0),

              //password Text field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                onChanged: (value) {
                  _password = value;
                },
              ),

              SizedBox(height: 16.0),

              // City Text field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'City',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 7, 7, 7))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                onChanged: (value) {
                  _city = value;
                },
              ),

              SizedBox(height: 16.0),

              //profile Picture
              GestureDetector(
                onTap: _pickProfilePicture,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 240, 234, 234)),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 66, 174, 247),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: _profilePicture == null
                      ? Text('Upload Profile Picture')
                      : Image.file(
                          _profilePicture!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                ),
              ),

              SizedBox(height: 24.0),

              //Sign up button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Perform sign up logic here
                    print(
                        'Username: $_username, Password: $_password, City: $_city');
                  }
                },

                //sign up button design
                child: Text('log in'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
