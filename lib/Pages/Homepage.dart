import 'package:flutter/material.dart';

import '../Models/catalog.dart';
import '../widgets/ItemWidget.dart';
import '../widgets/drawer.dart';

class homepage extends StatelessWidget {
  final int age = 20;
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(title: const Text("CATALOG  APPLICATION")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
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
