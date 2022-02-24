import 'package:flutter_catalog/models/catalog.dart';

class CartModel {


  //catalog filed
  late CatalogModel _catalog;

// Collection of IDs - store ids of Each item

  final List<int> _itemIds = [];

// Get Catalog

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

//Get items in the card
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

// get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

// add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

//remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
