import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Models/cart.dart';
import '../../Models/catalog.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        isInCart = isInCart.toggle();
        if (!isInCart) {
          final _catalog = CatalogModel();
          _cart.Catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              // ignore: deprecated_member_use
              context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isInCart ? Icon(Icons.done) : "Add To Cart".text.make(),
    );
  }
}
