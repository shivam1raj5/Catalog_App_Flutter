import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Models/catalog.dart';
import '../widgets/ItemWidget.dart';
import '../widgets/drawer.dart';

class Homepage_befor_velocity_x extends StatefulWidget {
  @override
  State<Homepage_befor_velocity_x> createState() =>
      _Homepage_befor_velocity_xState();
}

class _Homepage_befor_velocity_xState extends State<Homepage_befor_velocity_x> {
  final int age = 20;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    final catalogJson =
        await rootBundle.loadString("assets/Files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CATALOG  APPLICATION")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      /*Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/inlove.png",
              fit: BoxFit.contain,
              height: 500,
              width: 1000,
            ),
            const Text(
              "This is a Home Page of Shivam's Application",
              style: TextStyle(
                color: Color.fromARGB(255, 16, 39, 57),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.75,
            ),
          ],
        ),
      ),*/
      drawer: MyDrawer(),
    );
  }
}
