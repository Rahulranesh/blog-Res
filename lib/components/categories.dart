import 'package:blogapp/components/category.dart';
import 'package:blogapp/components/side_bar_container.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SideBarContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            numofItems: 3,
            press: () {},
            title: 'Artificial Intelligence',
          ),
          Category(
            numofItems: 3,
            press: () {},
            title: 'Augmented Reality',
          ),
          Category(
            numofItems: 4,
            press: () {},
            title: 'Flutter',
          ),
          Category(
            numofItems: 4,
            press: () {},
            title: 'Development',
          ),
          Category(
            numofItems: 4,
            press: () {},
            title: 'Virtual Reality',
          ),
          Category(
            numofItems: 4,
            press: () {},
            title: 'Full Stack',
          ),
        ],
      ),
      title: 'Categories',
    );
  }
}
