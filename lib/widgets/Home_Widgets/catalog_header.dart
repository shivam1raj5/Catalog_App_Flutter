import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "FevBazaar"
            .text
            .xl5
            .bold
            .color(context.theme.colorScheme.secondary)
            .make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
