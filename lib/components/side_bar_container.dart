import 'package:blogapp/constants.dart';
import 'package:flutter/material.dart';

class SideBarContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const SideBarContainer({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding / 4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kDarkBlackColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          child,
        ],
      ),
    );
  }
}
