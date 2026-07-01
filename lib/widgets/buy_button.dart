import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: "Buying not supported yet.".text.make()),
          snackBarAnimationStyle: AnimationStyle(
            duration: 1.seconds,
            curve: Curves.easeInOut,
            reverseDuration: 500.milliseconds,
          ),
        );
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
      child: "Buy".text.xl.make().p0(),
    );
  }
}
