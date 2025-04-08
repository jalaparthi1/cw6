import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // For form validation

  Future<void> signup() async {
    try {
      if (_formKey.currentState!.validate()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        Navigator.pop(
            context); // Navigate back to the previous screen after signup
      }
    } catch (e) {
      print('Signup failed: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup failed. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent, // Background color for a fresh look
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey, // Connect form key to handle validation
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // App Name or Logo (optional)
                    Text(
                      'Task Manager',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 40),

                    // Email TextField with Validation
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                            .hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),

                    // Password TextField with Validation
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30),

                    // Signup Button
                    ElevatedButton(
                      onPressed: signup,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Button color
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 15),

                    // Text Button to navigate back to the Login screen
                    TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context); // Go back to the previous screen (Login)
                      },
                      child: Text(
                        'Already have an account? Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Optional footer text (e.g., app version or contact info)
                    Text(
                      'Version 1.0.0',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
