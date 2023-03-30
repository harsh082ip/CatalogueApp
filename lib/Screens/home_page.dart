import 'package:catalogue_app/models/catalog.dart';
import 'package:catalogue_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/item-widget.dart';

class HomePage extends StatelessWidget {
  var name = 'harsh';
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogueModel.Items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //class catalogue model is called, in which it's asking length of array Items
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
              key: ValueKey(dummyList[index].id),
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
