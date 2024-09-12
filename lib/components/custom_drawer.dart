import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/custome_drawer_tile.dart';
import 'package:food_delivery/pages/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  void logout(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 60,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              20.0,
            ),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          CustomeDrawerTile(
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);
              },
              text: "H O M E"),
          CustomeDrawerTile(
              icon: Icons.settings,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
              text: "S E T T I N G S"),
          CustomeDrawerTile(
              icon: Icons.home, onTap: () {}, text: "P R O F I L E"),
          const Spacer(),
          CustomeDrawerTile(
              icon: Icons.logout, onTap: logout, text: "L O G O U T"),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
