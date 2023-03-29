import 'package:catalogue_app/models/catalog.dart';
import 'package:catalogue_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/item-widget.dart';

class HomePage extends StatelessWidget {
  var name = 'harsh';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogueModel.Items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogueModel.Items[index],
              key: ValueKey(CatalogueModel.Items[index].id),
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
