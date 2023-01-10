import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import '../themes.dart';

class CatalogImage extends StatelessWidget {
  final String imageurl;
  const CatalogImage({
    Key? key,
    required this.imageurl,
    required String image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageurl,
    ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}