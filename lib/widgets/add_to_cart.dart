import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Theme.of(context).buttonTheme.colorScheme?.primary,
        ),
        foregroundColor: WidgetStateProperty.all(
          Theme.of(context).buttonTheme.colorScheme?.secondary,
        ),
        shape: WidgetStateProperty.all(StadiumBorder()),
      ),
      child: "Add to Cart".text.make().p0(),
    ).wh(125, 36);
  }
}
