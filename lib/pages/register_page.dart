import 'package:blogapp/components/my_button.dart';
import 'package:blogapp/components/my_textfield.dart';
import 'package:blogapp/pages/home_page.dart';
import 'package:blogapp/services/api_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _register() async {
    final username = _usernameController.text;
    final email = _emailController.text;
    final password = _passwordController.text;

    final response = await ApiService.registerUser(username, email, password);
    if (response.statusCode == 201) {
      // Navigate to login page or show success message
      print('Registration successful');
    } else {
      // Show error message
      print("Registration failed: ${response.statusCode} ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 25),
            // Welcome message
            Text(
              'Let\'s create an account for you',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25),
            // Username TextField
            MyTextField(
              controller: _usernameController,
              hintText: 'Enter the username',
              obscureText: false,
            ),
            SizedBox(height: 10),
            // Email TextField
            MyTextField(
              controller: _emailController,
              hintText: 'Enter the email',
              obscureText: false,
            ),
            SizedBox(height: 10),
            // Password TextField
            MyTextField(
              controller: _passwordController,
              hintText: 'Enter the password',
              obscureText: true,
            ),
            SizedBox(height: 20),
            // Sign-Up button
            MyButton(
              onTap: _register,
              text: 'Sign-Up',
            ),
            SizedBox(height: 25),
            // Already have an account? Login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                    // Implement navigation to Login page
                  },
                  child: Text(
                    'Login now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
