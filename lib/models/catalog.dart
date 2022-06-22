class CatalogModel {
  static final catModel = CatalogModel();
  factory CatalogModel() => catModel;

  static List<Item> items = [
    Item(
        id: 1,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generator",
        price: 992,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2QcKLfKsTkrkRGdUKv2kaGUm_VvNv7oJQhQ&usqp=CAU")
  ];
  //get item by id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //get item by position
  Item getByposition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "img": image
      };
}
