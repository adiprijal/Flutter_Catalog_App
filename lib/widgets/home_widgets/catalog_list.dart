import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/pages/home_detail_page.dart';
import 'package:flutter_catalog_app/widgets/add_to_cart.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog_app/models/catalog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return !context.isMobile ? ClipRect(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16
        ),
        itemCount: CatalogModel.items!.length,
        itemBuilder: (context, index) {
          var catalog = CatalogModel.items![index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeDetailPage(catalog: catalog),
              ),
            ),
            child: CatalogItem(catalog: catalog),
          );
        },
      ),
    ) 
    : ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        var catalog = CatalogModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    var children = [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(imageUrl: catalog.image),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(Theme.of(context).primaryColor).bold.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                OverflowBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    AddToCartButton(catalog: catalog),
                  ],
                ).pOnly(right: 16),
              ],
            ).p(context.isMobile ? 0 : 16),
          ),
        ];
    return VxBox(
      child: context.isMobile? Row(
        children: children,
      )
      : Column(
        children: children,
      ),
    ).color(Theme.of(context).cardColor).roundedLg.square(150).make().py4();
  }
}
