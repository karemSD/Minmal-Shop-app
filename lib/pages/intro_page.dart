import 'package:flutter/material.dart';
import 'package:minmalecommerce/components/my_button.dart';
import 'package:minmalecommerce/pages/shop_page.dart';
import 'package:minmalecommerce/utils/utils.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  static String id = '/intro_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // logo
            children: [
              Icon(
                Icons.shopping_bag,
                size: Utils.getScreenWidth(context) * 0.2 < 120
                    ? Utils.getScreenWidth(context) * 0.2
                    : 130,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              SizedBox(
                height: Utils.getScreenHeight(context) * 0.020,
              ),

              // title
              Text(
                "Minmal Shop".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Utils.getScreenWidth(context) * 0.06 < 40
                      ? Utils.getScreenWidth(context) * 0.06
                      : 40,
                ),
              ),
              SizedBox(
                height: Utils.getScreenHeight(context) * 0.006,
              ),
              //subtitle
              Text(
                " Premium Quality Products",
                style: TextStyle(
                  fontSize: Utils.getScreenWidth(context) * 0.045 < 30
                      ? Utils.getScreenWidth(context) * 0.045
                      : 30,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              SizedBox(
                height: Utils.getScreenHeight(context) * 0.025,
              ),
              // button
              MyButton(
                onTap: () {
                  Navigator.pushNamed(context, ShopPage.id);
                },
                child: const Icon(Icons.arrow_forward),
              )
            ],
          ),
        ),
      ),
    );
  }
}
