import 'dart:convert';

import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:online_shop/models/catalog.dart';
import 'package:online_shop/widgets/drawer.dart';
import 'package:online_shop/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() { 
    super.initState();
    loadData();
  }

  loadData() async{
    var catalogJson =await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(productsData);
  }

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
