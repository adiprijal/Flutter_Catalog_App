import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item? catalog;
  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(catalog!.name, style: TextStyle(color: Theme.of(context).primaryColor)),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      bottomNavigationBar: Container(
        color: Theme.of(context).canvasColor,
        child: OverflowBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog!.price}".text.bold.xl2.make(),
            AddToCartButton(catalog: catalog!),
          ],
        ).pOnly(right: 16, left: 32, bottom: 32, top: 32),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog!.id.toString()),
              child: Image.network(catalog!.image),
            ).h32(context).p16(),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: Theme.of(context).cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog!.name.text.xl4
                          .color(Theme.of(context).primaryColor)
                          .bold
                          .make(),
                      catalog!.desc.text.lg
                          .textStyle(context.captionStyle)
                          .make(),
                      "This is a dummy description for the product. Ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud."
                          .text
                          .justify.color(Theme.of(context).primaryColor)
                          .textStyle(context.captionStyle)
                          .make()
                          .p16(),
                    ],
                  ).pOnly(top: 64),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
