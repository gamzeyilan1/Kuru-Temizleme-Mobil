import 'package:app_theme/screens/AddNewAddressPage.dart';
import 'package:flutter/material.dart';
import '../models/services.dart';


class Services extends ChangeNotifier{
  String _searchString = "";

  void changeSearchString(String searchString) {
    _searchString = searchString;
    notifyListeners();
  }


 List<Service> _items = [
   Service(
   id: 's1',
   title: 'Gömlek',
   price: 19.99,
 ),
   Service(
     id: 's2',
     title: 'Pantolon',
     price: 19.99,
   ),
   Service(
     id: 's3',
 title: 'Bluz',
 price: 19.99,
 ),
   Service(
 id: 's4',
 title: 'Etek',
 price: 19.99,
 ),];
 // List <Service> get items {
 //   return [..._items];
 // }

 List <Service> get items {
   List<Service> visibleItems = [];
   visibleItems = _items;
     if (_searchString.isEmpty){
       visibleItems = _items;
     } else {
       visibleItems = _items.where((itemPointer) => itemPointer.title.toLowerCase().contains(_searchString.toLowerCase()))
           .toList();
     };

     return [...visibleItems];
   }

}

class SelectedServices extends ChangeNotifier{
  int _itemCounter = 0;
  double total = 0;
  void addToBasket(widget){
    this._itemCounter++;
    total += widget.price;
    notifyListeners();
  }

  void removeFromBasket (widget){
    this._itemCounter--;
    total -= widget.price;
    notifyListeners();
  }
  int getItemCounter() => _itemCounter;

}
