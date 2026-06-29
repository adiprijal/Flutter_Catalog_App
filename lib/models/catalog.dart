// Catalog Item Model

// This code defines a catalog model for a Flutter application. It includes a `CatalogModel` class that contains a static list of items, and an `Item` class that represents individual items in the catalog. Each item has properties such as `id`, `name`, `desc`, `price`, `color`, and `image`. The `CatalogModel` class currently contains one sample item, an iPhone 14 Pro, with its details filled in.
class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation with Super Retina XDR display.",
      price: 999,
      color: "#33505a",
      image: "https://files.refurbed.com/ii/iphone-14-pro-max-1662628210.jpg"
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}