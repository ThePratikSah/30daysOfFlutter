class CatelogModel {
  static final items = [
    Item(
      id: 1,
      name: "Pratik Sah",
      desc: "Javascript Developer",
      price: 999,
      color: "#e1e1e1",
      image: "https://avatars.githubusercontent.com/u/25739004?s=460&v=4",
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

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}
