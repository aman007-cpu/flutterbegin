import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:matcher/matcher.dart';

class Itemwidget extends StatelessWidget {
  final Item item;

  const Itemwidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressesd");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1,
          style: TextStyle(
              color: Color.fromARGB(255, 138, 132, 2),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
