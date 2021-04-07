import "package:flutter/material.dart";
import 'package:online_shop/models/catalog.dart';
import 'package:online_shop/widgets/drawer.dart';
import 'package:online_shop/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList  = List.generate(20, (index) => CatalogModel.items[0]);
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context,index){
              return ItemWidget(item: dummyList[index],);
            },
          ),
        ),
        drawer: MyDrawer()
      ),
    );
  }
}
