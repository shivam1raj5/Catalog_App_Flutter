class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iphone",
      desc: "Apple iphone 14",
      price: 900,
      color: "#33505a",
      imageurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-FbfqM4ny-rcFMptYNGgfquGo7LFzNjd4JQ&usqp=CAU",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageurl});
}
