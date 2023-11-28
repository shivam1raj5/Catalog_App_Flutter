import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../Models/cart.dart';
import '../../Models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart!.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(item: catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              // ignore: deprecated_member_use
              context.theme.colorScheme.secondary,),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isInCart ? Icon(Icons.done) : "Add To Cart".text.make(),
    );
  }
}
