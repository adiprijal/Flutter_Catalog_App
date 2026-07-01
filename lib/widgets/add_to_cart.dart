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
  bool isInCart = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isInCart = isInCart.toggle();
        final catalog = CatalogModel();
        final cart = CartModel();
        cart.catalog = catalog;
        cart.addItem(widget.catalog);
        setState(() {});
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
      child: isInCart ? Icon(Icons.done) : "Add to Cart".text.make().p0(),
    ).wh(125, 36);
  }
}
