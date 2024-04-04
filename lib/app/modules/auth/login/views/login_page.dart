// Import libraries
import 'package:flutter/material.dart';
import 'package:job_dream/app/modules/auth/register/views/register_page.dart';
import 'package:job_dream/app/modules/auth/util/views/forgot_password_page.dart';
import 'package:job_dream/app/widgets/primary_button.dart';
import 'package:job_dream/app/widgets/secondary_button.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'img/sky.png', // Replace with the path to your image
              width: 100, // Specify the desired width
              height: 100, // Specify the desired height
            ),
            const SizedBox(height: 20.0),
            const Text("Log in to your account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text(
              'Welcome back! Please enter your details',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30.0),

            // Textfield for email
            SizedBox(
              width: 400, // Specify the desired width
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),

            SizedBox(
              width: 400, // Specify the desired width
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            // Row for 'Forgot Password' text
            TextButton(
              onPressed: () {
                // Navigate to the Forgot Password page
               Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordPage()),
                    );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 250.0),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Color(0xFF96D8CC)),
                ),
              ),
            ),
            const SizedBox(height: 25.0),

            // ElevatedButton for 'Sign in'
            PrimaryButton("Sign in",
                onPressed: () => Navigator.pushNamed(context, '/home')),
            const SizedBox(height: 20.0),

            // Text for 'G Sign in with Google'
            SecondaryButton("Sign in With Google", onPressed: () {}),
            const SizedBox(height: 15.0),

            // Row for 'Don't have an account?' and 'Sign up' text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                const SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterPage()),
                    );
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Color(0xFF96D8CC)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
