import 'package:blogapp/components/my_drawer_tile.dart';
import 'package:blogapp/pages/login_page.dart';
import 'package:blogapp/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home list tile
          MyDrawerTile(
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
            text: 'H O M E ',
          ),
          //settings list tile
          MyDrawerTile(
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            text: 'S E T T I N G S ',
          ),
          Spacer(),
          //logout list tile
          MyDrawerTile(
            icon: Icons.logout,
            onTap: () {
              var push = Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(
                      onTap: () {},
                    ),
                  ));
            },
            text: 'L O G O U T ',
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
