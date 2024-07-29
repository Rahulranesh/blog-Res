import 'package:blogapp/constants.dart';
import 'package:flutter/material.dart';

class RecentPosts extends StatelessWidget {
  final String image, title;
  final VoidCallback press;
  RecentPosts(
      {super.key,
      required this.image,
      required this.press,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        // Add your onTap functionality here

        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(image),
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Expanded(
              flex: 5,
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: kDarkBlackColor,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
