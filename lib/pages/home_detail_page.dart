import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:matcher/matcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 237, 15, 15)),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Buy".text.make())
                .wh(100, 50)
          ],
        ).p32(),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .p8()
              .centered()
              .h32(context),
          Expanded(
              child: VxArc(
            height: 40.0,
            edge: VxEdge.TOP,
            arcType: VxArcType.CONVEY,
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.color(MyTheme.creamcolor).xl4.bold.make(),
                  catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p8()
                      .px1(),
                ],
              ).py64(),
            ),
          ))
        ]),
      ),
    );
  }
}
