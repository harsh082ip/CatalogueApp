class CatalogueModel {
  static final Items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iphone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71WrL1PJ27L._AC_SY679_.jpg",
    ),
  ];
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
}
