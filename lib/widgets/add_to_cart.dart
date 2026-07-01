// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/core/store.dart';
import 'package:flutter_catalog_app/models/cart.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCartButton extends StatelessWidget {
  final Item catalog;
  const AddToCartButton({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart!;

    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          AddMutation(catalog);
          // setState(() {});
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
