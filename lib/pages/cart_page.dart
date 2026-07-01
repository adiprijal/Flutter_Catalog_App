import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/core/store.dart';
import 'package:flutter_catalog_app/models/cart.dart';
import 'package:flutter_catalog_app/widgets/buy_button.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(Theme.of(context).primaryColor).make(),
      ),
      body: Column(children: [_CartList().expand(), Divider(), _CartTotal()]),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final cart = (VxState.store as MyStore).cart!;

    return cart.items.isEmpty
        ? ListTile(title: "Your cart is empty".text.center.make())
        : ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Image.network(
                    cart.items[index].image,
                    width: 50,
                    height: 50,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      RemoveMutation(cart.items[index]);
                    },
                  ),
                  title: cart.items[index].name.text.make(),
                  subtitle: "\$${cart.items[index].price}".text.make(),
                ),
              );
            },
          );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final cart = (VxState.store as MyStore).cart!;

    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            mutations: {RemoveMutation},
            builder: (context, _, _) {
              return "\$${cart.totalPrice.toStringAsFixed(2)}".text.xl2
                  .color(Theme.of(context).primaryColor)
                  .make();
            },
          ),
          18.widthBox,
          BuyButton().wh(100, 36),
        ],
      ),
    );
  }
}
