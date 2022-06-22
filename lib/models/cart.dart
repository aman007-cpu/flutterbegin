// ignore_for_file: empty_constructor_bodies

import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel();
  factory CartModel() => cartModel;

  late CatalogModel _catalog;
  final List<int> _itemIds = [];
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newcatalog) {
    assert(newcatalog != null);
    _catalog = newcatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);
  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
