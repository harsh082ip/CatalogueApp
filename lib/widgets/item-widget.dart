import 'package:flutter/material.dart ';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({super.key});
  final Item item;

  const ItemWidget({required Key key, required this.item})
      : assert(item != null),
        super(key: key);

  // const ItemWidget({super.key, assert() required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
