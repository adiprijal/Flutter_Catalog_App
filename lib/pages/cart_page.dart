import 'package:flutter/material.dart';
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

class _CartList extends StatefulWidget {
  const _CartList();

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty ? 
      ListTile(
        title: "Your cart is empty".text.center.make(),
      ) :
      ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.done),
            trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () {
              _cart.removeItem(_cart.items[index]);
              setState(() {});
            },
          ),
          title: _cart.items[index].name.text.make(),
        );
      },
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cart.totalPrice.toStringAsFixed(2)}".text.xl2.color(Theme.of(context).primaryColor).make(),
          18.widthBox,
          BuyButton().wh(100, 36),
        ],
      ),
    );
  }
}
