class CatalogModel{
    static final item = [Item(
      id : 1,
      name:"iphone 14 pro max",
      desc:"Apple 14th generation with A16 bionic chip",
      price: 999,
      image: "https://m.media-amazon.com/images/I/71T5NVOgbpL._SL1500_.jpg",
      color: "#33505a",
  )];
}
class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}


