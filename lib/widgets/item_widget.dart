import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';

class ItemsWidget extends StatelessWidget {
  final Item item;

  // assert statement is used to ensure that the item passed to the widget is not null. This is a good practice to catch potential errors early in the development process.
  // But since Dart's null safety feature is enabled, the `required` keyword already ensures that `item` cannot be null, making the assert statement redundant. However, it can still serve as an additional safeguard during development.
  // const ItemsWidget({super.key, required this.item}) : assert(item != null);
  const ItemsWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 1.0, // This property adds a shadow effect to the card, giving it a slight 3D appearance. A higher value would result in a more pronounced shadow.
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
          textScaler: TextScaler.linear(1.2),
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        onTap: () {
          print("Tapped on ${item.name}");
        }
      ),
    );
  }
}
