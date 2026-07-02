import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/core/store.dart';
import 'package:flutter_catalog_app/models/cart.dart';
import 'package:flutter_catalog_app/utils/routes.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.jsonbin.io/v3/b/6a4672b8da38895dfe22c98c";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    // Using the URL to fetch data from the API
    var response = await http.get(Uri.parse(url));
    var catalogJson = response.body;
    var decodedData = jsonDecode(catalogJson);
    var records = decodedData["record"];
    var productsData = records["products"];
    CatalogModel.items = List.from(
      productsData,
    ).map((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      floatingActionButton: FloatingCartButton(),
      body: SafeArea(
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}

class FloatingCartButton extends StatelessWidget {
  const FloatingCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cart = (VxState.store as MyStore).cart!;
    return VxBuilder(
      mutations: {AddMutation, RemoveMutation},
      builder: (ctx, _, _) => FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute)
        ,
        shape: CircleBorder(),
        backgroundColor: context.theme.buttonTheme.colorScheme?.primary,
        foregroundColor: context.theme.buttonTheme.colorScheme?.secondary,
        child: Icon(Icons.shopping_cart),
      ).badge(
        color: Vx.red500,
        size: 20,
        count: cart.items.length,
        textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
