// convert package is used to convert data between different formats, such as JSON and Dart objects. In this case, it is used to decode the JSON data loaded from the local file system into a Dart object that can be used in the app.
import 'dart:convert';

import 'package:flutter/material.dart';
// services.dart is used to load assets from the local file system, such as JSON files, images, and other resources. In this case, it is used to load a JSON file containing product data for the catalog app.
import 'package:flutter/services.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/drawer.dart';
import 'package:flutter_catalog_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    // Giving a delay of 2 seconds to simulate a loading time for the data. This is useful for testing the loading state of the app and ensuring that the UI behaves correctly while data is being fetched.
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/products.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      drawer: MyDrawer(),
      // Check if the items list is not null and not empty, then display the list of items using ListView.builder. If the items list is null or empty, display a CircularProgressIndicator to indicate that data is being loaded.
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty) ? ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemsWidget(item: CatalogModel.items[index]);
        },
      ) : Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
