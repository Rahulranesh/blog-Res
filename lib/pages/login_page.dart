import 'package:blogapp/components/my_button.dart';
import 'package:blogapp/components/my_textfield.dart';
import 'package:blogapp/pages/home_page.dart';
import 'package:blogapp/services/api_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    final response = await ApiService.loginUser(email, password);
    if (response.statusCode == 200) {
      // Navigate to home page or show success message
      print('Login successful');
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Homepage(),
          ));
    } else {
      // Show error message
      print('Login failed: ${response.statusCode} ${response.body}');
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
              'B L O G',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25),
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
            // Sign-In button
            MyButton(
              onTap: _login,
              text: 'Sign-In',
            ),
            SizedBox(height: 25),
            // Not a member? Register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
