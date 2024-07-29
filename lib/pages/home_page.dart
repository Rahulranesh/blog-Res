// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blogapp/Controllers/menu_controller.dart';
import 'package:blogapp/components/header.dart';
import 'package:blogapp/components/side_menu.dart';
import 'package:blogapp/constants.dart';
import 'package:blogapp/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final menuController _controller = Get.put(menuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              margin: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: MainPage(),
            ),
          ],
        ),
      ),
    );
  }
}
