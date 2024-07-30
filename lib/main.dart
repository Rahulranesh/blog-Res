import 'package:blogapp/auth/login_or_regsiter_page.dart';
import 'package:blogapp/pages/home_page.dart';
import 'package:blogapp/pages/login_page.dart';
import 'package:blogapp/pages/register_page.dart';
import 'package:blogapp/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: LoginOrRegister()),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
