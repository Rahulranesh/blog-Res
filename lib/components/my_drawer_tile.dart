import 'package:flutter/material.dart';

class MyDrawerTile extends StatefulWidget {
  final IconData icon;
  final Function onTap;
  final String text;

  const MyDrawerTile({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  _MyDrawerTileState createState() => _MyDrawerTileState();
}

class _MyDrawerTileState extends State<MyDrawerTile> {
  bool isPressed = false;

  void _handleTap() {
    setState(() {
      isPressed = !isPressed;
    });
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(isPressed
          ? Icons.check
          : widget.icon), // Change the icon based on the state
      title: Text(widget.text),
      onTap: _handleTap,
    );
  }
}
