import 'package:flutter_application_1/Models/cart.dart';
import 'package:flutter_application_1/Models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel? catalog;
  CartModel? cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart?.Catalog = catalog!;
  }
}
