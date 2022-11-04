import 'package:flutter/cupertino.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _product = [
    Product(name: 'Baju', price: 55000, qty: 50),
    Product(name: 'Celana', price: 95000, qty: 50),
    Product(name: 'Topi', price: 35000, qty: 50),
    Product(name: 'Tas', price: 295000, qty: 50),
    Product(name: 'Jaket', price: 295000, qty: 20),
  ];

  List get product => _product;

  // set product(int index){
  //   print(index);
  //   // List newProduct = _product[index].qty;

  //   _product = [Product(name: 'Topi', price: 35000, qty: 50)]

  //   notifyListeners();
  // };
}
