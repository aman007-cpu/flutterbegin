class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String img;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.img});
}

final products = [
  Item(
      id: "Code11",
      name: "iphone 12 pro",
      desc: "Apple iphone 12th generator",
      price: 992,
      color: "#33505a",
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2QcKLfKsTkrkRGdUKv2kaGUm_VvNv7oJQhQ&usqp=CAU")
];
