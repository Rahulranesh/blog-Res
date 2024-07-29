import 'package:blogapp/pages/upload_post_page.dart';
import 'package:flutter/material.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  MySilverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      actions: [
        //cart button
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UploadPost(),
                ));
          },
          icon: Icon(Icons.add),
        ),
      ],
      title: title,
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}
