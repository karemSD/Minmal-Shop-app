import 'package:flutter/material.dart';
import 'package:minmalecommerce/utils/utils.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const MyButton({super.key, required this.onTap, required this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.5),
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(Utils.getScreenWidth(context) * 0.050 > 30
              ? 30
              : Utils.getScreenWidth(context) * 0.050),
          child: child),
    );
  }
}
