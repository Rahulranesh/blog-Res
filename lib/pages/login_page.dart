import 'package:blogapp/components/my_button.dart';
import 'package:blogapp/components/my_textfield.dart';
import 'package:blogapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //log-in
  void login() {
//fill auth

//navigate to homepage
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Homepage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(
            height: 25,
          ),

          //welcome msg
          Text(
            'B L O G ',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //email
          MyTextField(
              controller: emailController,
              hintText: 'Enter the email',
              obscureText: false),
          SizedBox(
            height: 10,
          ),

          //password
          MyTextField(
              controller: emailController,
              hintText: 'Enter the password',
              obscureText: true),
          SizedBox(
            height: 20,
          ),

          //sign-in
          MyButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ));
              },
              text: 'Sign-In'),

          SizedBox(
            height: 25,
          ),

          //register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member ?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Register now ',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
