import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';
import 'package:flutter_catalog_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      drawer: MyDrawer(),
      // ListView.builder() is used to create a scrollable list of items. It takes an itemCount and an itemBuilder function that defines how each item in the list should be built.
      // It only builds the items that are visible on the screen, which makes it efficient for large lists.
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemsWidget(item: dummyList[index]);
        },
      ),
    );
  }
}
