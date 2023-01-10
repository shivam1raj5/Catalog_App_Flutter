
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import '../Models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //  backgroundColor: Colors.transparent,
          ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      // ignore: deprecated_member_use
                      MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: "Add To Cart".text.make(),
            ).wh(150, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.imageurl))
              .p16()
              .wh(300, 250),
          Expanded(
              child: VxArc(
            height: 30.0,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.xl4.color(context.accentColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                  10.heightBox,
                  catalog.details.text.xl.make().pLTRB(32, 48, 32, 32),
                ],
              ).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
