import 'package:flutter_catalog_app/core/store.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store?.cart!._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store?.cart!._itemIds.remove(item.id);
  }
}