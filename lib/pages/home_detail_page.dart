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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${Catalog.price}".text.bold.xl4.make(),
                  ElevatedButton(onPressed: () {}, 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                    shape: MaterialStateProperty.all(StadiumBorder(),)
                  ),
                  child: "Add to cart".text.make(),
                  ).wh(120, 50)
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
                  color: context.cardColor,
                  width:context.screenWidth,
                  child:
                  Column(
                    children: [
                      Catalog.name.text.xl4.bold.color(context.accentColor).bold.make(),
                      Catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      10.heightBox,
                      "Invidunt ipsum accusam erat et amet amet et, amet sea voluptua ut est labore consetetur amet. Sea diam rebum amet diam invidunt et kasd sanctus. Eirmod eos ipsum erat sit ut lorem consetetur ipsum labore. Lorem diam ut sed et ipsum et invidunt. Amet sea rebum labore sit sed dolor."
                      .text.textStyle(context.captionStyle).make().p16()
                    ],
                  ).py64(),
                )))   
          ]),
      ),
    );
  }
}
