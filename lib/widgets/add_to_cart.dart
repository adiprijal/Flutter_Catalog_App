import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/cart.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCartButton extends StatefulWidget {
  final Item catalog;
  const AddToCartButton({super.key, required this.catalog});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final catalog = CatalogModel();
          _cart.catalog = catalog;
          _cart.addItem(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Theme.of(context).buttonTheme.colorScheme?.primary,
        ),
        foregroundColor: WidgetStateProperty.all(
          Theme.of(context).buttonTheme.colorScheme?.secondary,
        ),
        shape: WidgetStateProperty.all(StadiumBorder()),
      ),
      child: isInCart ? Icon(Icons.done) : Icon(Icons.add_shopping_cart),
    );
  }
}
