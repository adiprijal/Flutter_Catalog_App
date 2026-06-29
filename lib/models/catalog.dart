// Catalog Item Model

class CatalogModel {
  static List<Item> items = [];
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

// The `fromMap` factory constructor is used to create an instance of the `Item` class from a map (typically a JSON object). This is useful when you want to convert data received from an API or a local JSON file into Dart objects that can be used in your application. The constructor takes a `Map<String, dynamic>` as input and assigns the values from the map to the corresponding fields of the `Item` class.
// All the final fields must be initialized in the constructor, and since they are marked as `required`, the constructor ensures that all necessary data is provided when creating an instance of the `Item` class.
// factory constructors are a way to provide more control over the instantiation of a class. They can return instances of the class or even instances of subclasses, and they can contain logic to determine what instance to return. In this case, the `fromMap` factory constructor is used to create an `Item` instance from a map, which is a common pattern when working with data in Flutter applications.
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  Map<String, Object> toMap() => {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image,
  };
}