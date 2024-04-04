// Import libraries
import 'package:flutter/material.dart';
import 'package:job_dream/app/modules/auth/login/views/login_page.dart';
import 'package:job_dream/app/widgets/primary_button.dart';
import 'package:job_dream/app/widgets/secondary_button.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            const Text("Create an Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text(
              'Start your Journey!',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30.0),

            SizedBox(
              width: 400, // Specify the desired width
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),

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
            Container(
              margin: const EdgeInsets.only(left: 250.0),
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Color(0xFF96D8CC)),
              ),
            ),
            const SizedBox(height: 25.0),

            // ElevatedButton for 'Sign in'
            PrimaryButton("Sign Up",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterPage()),
                    );
                } ),
            const SizedBox(height: 20.0),

            // Text for 'G Sign in with Google'
            SecondaryButton("Sign in With Google", onPressed: () {}),
            const SizedBox(height: 15.0),

            // Row for 'Don't have an account?' and 'Sign up' text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?'),
                const SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage()),
                    );
                  },
                  child: const Text(
                    'Sign In',
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
