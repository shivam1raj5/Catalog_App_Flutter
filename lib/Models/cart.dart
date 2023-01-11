import 'package:flutter_application_1/Models/catalog.dart';

class CartModel {
  //Make Singlton
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

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

  //Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
