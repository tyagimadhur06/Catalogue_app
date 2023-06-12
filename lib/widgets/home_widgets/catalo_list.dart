import 'package:flutter/material.dart';
import 'package:myapp/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../themes.dart';
import 'catalog_image.dart';


class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.item.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.item[index];
        return InkWell(
          onTap:() => Navigator.push(context,MaterialPageRoute(builder: (context) => HomeDetailPage(Catalog: catalog,),),),
          child: CatalogItem(catalog: catalog));
      },
    );
  }
}
class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyTheme.darkBluish).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(onPressed: () {}, 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
                  shape: MaterialStateProperty.all(StadiumBorder(),)
                ),
                child: "Buy".text.make(),)
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.roundedLg.square(150).make().py(16);
  }
}

