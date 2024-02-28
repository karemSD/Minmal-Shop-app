import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:minmalecommerce/components/my_button.dart';
import 'package:minmalecommerce/models/product_model.dart';
import 'package:minmalecommerce/models/shop_model.dart';
import 'package:minmalecommerce/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:universal_platform/universal_platform.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static String id = "/cart_page";
  void removeItemFromCart(
      {required BuildContext context, required Product product}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Remove this item to cart ?"),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);

              context.read<Shop>().removeFromCart(item: product);
            },
            child: const Text("Yes"),
          )
        ],
      ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content:
            Text("User want to pay! Connect this app to your pyment backend "),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print(Utils.getScreenWidth(context) * 0.10);
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart "),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
              child: cart.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.cartArrowDown,
                          size: Utils.getScreenWidth(context) * 0.17 >= 120
                              ? 120
                              : Utils.getScreenWidth(context) * 0.17,
                        ),
                        SizedBox(
                          height: Utils.getScreenHeight(context) * 0.02,
                        ),
                        Center(
                            child: Text(
                          "Your Cart is Empty",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: (UniversalPlatform.isDesktop ||
                                    UniversalPlatform.isWeb)
                                ? Utils.getScreenWidth(context) * 0.027
                                : Utils.getScreenWidth(context) * 0.04,
                          ),
                        )),
                      ],
                    )
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];

                        return ListTile(
                          title: Text(
                            item.name,
                          ),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              removeItemFromCart(
                                  context: context, product: item);
                            },
                          ),
                        );
                      },
                    )),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
                onTap: () {
                  payButtonPressed(context);
                },
                child: Text("PYA NOW ")),
          )
        ],
      ),
    );
  }
}
