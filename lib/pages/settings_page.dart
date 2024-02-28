import 'package:flutter/material.dart';
import 'package:minmalecommerce/themes/theme_mode.dart';
import 'package:minmalecommerce/themes/theme_provider.dart';
import 'package:minmalecommerce/utils/utils.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static String id = "/SettingsPage";
  // static bool darkmode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Utils.getScreenWidth(context) * 0.15),
        padding: EdgeInsets.symmetric(
            vertical: Utils.getScreenHeight(context) * 0.010),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
              return SwitchListTile(
                activeColor: Colors.green,
                title: Text("Dark Mode",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.inversePrimary)),
                value: themeProvider.themeData == darkmode,
                onChanged: (value) {
                  themeProvider.toggleTheme();
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
