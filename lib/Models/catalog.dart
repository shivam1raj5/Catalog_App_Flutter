class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item({this.id, this.name, this.desc, this.price, this.color, this.imageurl});
}

final products = [
  Item(
    id: "ABC01",
    name: "iphone 14 Pro",
    desc: "Apple iphone 14",
    price: 140000,
    color: "#33505a",
    imageurl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-FbfqM4ny-rcFMptYNGgfquGo7LFzNjd4JQ&usqp=CAU",
  )
];
