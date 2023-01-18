import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Core/store.dart';
import 'package:flutter_application_1/Models/cart.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Models/catalog.dart';
import '../utils/routes.dart';
import '../widgets/Home_Widgets/catalog_list.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final int age = 20;

  /*For fetch items from internet add http version in pubspec.ymal
    add this line here 

    final url = "ab/dg/gf";
    
  */

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));

    /* Comment out this line 

        final catalogJson =
        await rootBundle.loadString("assets/Files/catalog.json");

        and add this line

        final response = await http.get(Uri.parse(url));
        final catalogJson = response.body;
    */

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
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      appBar: AppBar(title: "CATALOG  APPLICATION".text.purple900.bold.make()),
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, _, __) => FloatingActionButton(
          onPressed: () => context.vxNav.push(Uri.parse(MyRoutes.CartPage)),
          // ignore: deprecated_member_use
          backgroundColor: context.theme.buttonColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ).badge(
            color: Vx.white,
            size: 22,
            count: _cart?.items.length,
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //CatalogHeader(),
            if (CatalogModel.items.isNotEmpty)
              CatalogList().py16().expand()
            else
              Center(child: CircularProgressIndicator().expand())
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
