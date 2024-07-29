import 'package:blogapp/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:blogapp/Controllers/menu_controller.dart';

class WebMenu extends StatelessWidget {
  WebMenu({Key? key}) : super(key: key);

  final menuController _controller = Get.put(menuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: List.generate(
              _controller.menuItems.length,
              (index) => WebMenuItem(
                  isActive: _controller.selectedIndex == index,
                  press: () => _controller.setMenuIndex(index),
                  text: _controller.menuItems[index])),
        ));
  }
}

class WebMenuItem extends StatefulWidget {
  final bool isActive;
  final String text;
  final VoidCallback press;

  WebMenuItem(
      {Key? key,
      required this.isActive,
      required this.press,
      required this.text})
      : super(key: key);

  @override
  State<WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive) {
      return kPrimaryColor.withOpacity(0.4);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      child: Row(
        children: [
          AnimatedContainer(
            duration: kDefaultDuration,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: _borderColor(), width: 3))),
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight:
                    widget.isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
