import 'package:blogapp/constants.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final int numofItems;
  final VoidCallback press;

  Category({
    super.key,
    required this.numofItems,
    required this.press,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: press,
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(
              color: kDarkBlackColor,
            ),
            children: [
              TextSpan(
                text: ' ($numofItems)',
                style: TextStyle(
                  color: kDarkBlackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
