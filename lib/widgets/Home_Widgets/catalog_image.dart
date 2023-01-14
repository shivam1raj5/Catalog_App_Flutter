import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

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
    )
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p16()
        .wPCT(context: context, widthPCT: context.isMobile ? 40 : 20);
  }
}
