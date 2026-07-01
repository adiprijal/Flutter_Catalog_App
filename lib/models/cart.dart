import 'package:flutter_catalog_app/models/catalog.dart';

class CartModel{
  CatalogModel? _catalog;

  // ids of each item in the cart
  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel? get catalog => _catalog;

  // Set Catalog
  set catalog(CatalogModel? newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog!.getById(id)!).toList();

  // Get total price
  num get totalPrice => items.fold(0, (total, current) => total + current.price);

  // Add Item
  void addItem(Item item){
    _itemIds.add(item.id);
  }

  // Remove Item
  void removeItem(Item item) {
    _itemIds.remove(item.id);
  }
}