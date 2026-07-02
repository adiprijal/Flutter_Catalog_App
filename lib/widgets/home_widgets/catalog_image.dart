import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String imageUrl;

  const CatalogImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
    ).box.rounded.p8.color(Theme.of(context).canvasColor).make().p16().wPCT(context: context, widthPCT: context.isMobile ? 40 : 20);
  }
}
