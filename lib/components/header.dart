import 'package:blogapp/components/socal.dart';
import 'package:blogapp/components/web_menu.dart';
import 'package:blogapp/Controllers/menu_controller.dart';

import 'package:blogapp/constants.dart';
import 'package:blogapp/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  final menuController _controller = Get.put(menuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: kDarkBlackColor,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: const EdgeInsets.all(kDefaultPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Row(
              children: [
                if (!Responsive.isDesktop(context))
                  IconButton(
                    onPressed: () {
                      _controller.openOrcloseDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                SvgPicture.asset('assets/icons/logo.svg'),
                const Spacer(),
                if (Responsive.isDesktop(context)) WebMenu(),
                const Spacer(),
                const Socal(),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          const Text(
            'Welcome to Our Blog',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Text(
              'Stay Updated with the newest design and development stories, case studies,\n and insights',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Raleway',
                height: 1.5,
              ),
            ),
          ),
          FittedBox(
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Text(
                    'Learn More',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: kDefaultPadding / 2),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          if (Responsive.isDesktop(context))
            SizedBox(
              height: kDefaultPadding,
            )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('MenuController', MenuController));
  }
}
