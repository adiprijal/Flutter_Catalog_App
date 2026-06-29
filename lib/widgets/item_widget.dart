import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';

class ItemsWidget extends StatelessWidget {
  final Item item;

  const ItemsWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
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
          print("Purchased ${item.name}");
        }
      ),
    );
  }
}
