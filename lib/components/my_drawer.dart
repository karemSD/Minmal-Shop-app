import 'package:flutter/material.dart';
import 'package:minmalecommerce/components/my_list_tile.dart';
import 'package:minmalecommerce/pages/about_page.dart';
import 'package:minmalecommerce/pages/cart_page.dart';
import 'package:minmalecommerce/pages/intro_page.dart';
import 'package:minmalecommerce/pages/settings_page.dart';
import 'package:minmalecommerce/utils/utils.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    print("size drwer");
    print(Utils.getScreenWidth(context) * 0.2);
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header  : logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: Utils.getScreenWidth(context) * 0.2 < 100
                      ? Utils.getScreenWidth(context) * 0.2
                      : 100,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              SizedBox(
                height: Utils.getScreenHeight(context) * 0.02,
              ),
              // shop tile
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  print("object");
                  Navigator.pop(context);
                },
              ),
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, CartPage.id);
                },
              ),
              MyListTile(
                text: "Settings",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, SettingsPage.id);
                },
              ),
              MyListTile(
                text: "About",
                icon: Icons.info,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, AboutPage.id);
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: Utils.getScreenHeight(context) * 0.02),
            child: MyListTile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, IntroPage.id, (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
