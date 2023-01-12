import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/Core/store.dart';
import 'package:flutter_application_1/Models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

  //collection of ID's - Store ID's each item
  final List<int> _itemIds = [];

  //Get Catalog
  CatalogModel get catalog => _catalog;

  set Catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //Get item in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation({
    required this.item,
  });

  @override
  perform() {
    store?.cart?._itemIds.add(item.id);
  }
}
