import 'dart:ui';

class Cart{
  final String imageUrl;
  final String name;

  Cart({required this.imageUrl,required this.name});

}
final List<Cart>cartList= [
  Cart(
      imageUrl: "assets/ps.png",
      name: "ps1"),
  Cart(
      imageUrl: "assets/ps.png",
      name: "ps2"),
  Cart(
      imageUrl: "assets/ps.png",
      name: "ps3"),
  Cart(
      imageUrl: "assets/ps.png",
      name: "ps4"),
  Cart(
      imageUrl: "assets/ps.png",
      name: "ps5")
];
