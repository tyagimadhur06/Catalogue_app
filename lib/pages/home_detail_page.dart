import 'package:flutter/material.dart';
import 'package:myapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item Catalog;

  const HomeDetailPage({super.key, required this.Catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${Catalog.price}".text.bold.xl4.make(),
                  ElevatedButton(onPressed: () {}, 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
                    shape: MaterialStateProperty.all(StadiumBorder(),)
                  ),
                  child: "Buy".text.xl.make(),
                  ).wh(100, 50)
                ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(Catalog.id.toString()),
              child: Image.network(Catalog.image)
              ).h32(context),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width:context.screenWidth,
                  child:
                  Column(
                    children: [
                      Catalog.name.text.xl4.bold.color(MyTheme.darkBluish).bold.make(),
                      Catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      10.heightBox,
                    ],
                  ).py64(),
                )))   
          ]),
      ),
    );
  }
}
