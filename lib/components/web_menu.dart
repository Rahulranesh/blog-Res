import 'package:blogapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WebMenu extends StatelessWidget {
  WebMenu({Key? key}) : super(key: key);

  final MenuController _controller = Get.put(MenuController());

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

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ['Cases', 'Services', 'About Us', 'Careers', 'Blog', 'Contact'];

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
