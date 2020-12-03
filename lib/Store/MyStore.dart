import 'package:ecomerce_design/models/Product.dart';
import 'package:flutter/material.dart';

class MyStore extends ChangeNotifier {
  List<Product> productItem = [];
  List<Product> basketItem = [];
  // ignore: avoid_init_to_null
  Product activeProductItem = null;
  double totalCartValue = 0;

  MyStore() {
    //set up data
    // productItem = [
    //   Product(
    //       id: 1,
    //       name: "DSlR",
    //       image: "https://picsum.photos/250?image=9",
    //       qty: 1,
    //       price: 10000),
    //   Product(
    //       id: 2,
    //       qty: 1,
    //       image: "https://picsum.photos/250?image=8",
    //       price: 30000,
    //       name: "DSlR"),
    //   Product(
    //       id: 3,
    //       qty: 1,
    //       image: "https://picsum.photos/250?image=7",
    //       price: 5600,
    //       name: "DSlR"),
    //   Product(
    //       id: 4,
    //       qty: 1,
    //       image: "https://picsum.photos/250?image=10",
    //       price: 1900,
    //       name: "DSlR"),
    // ];

    productItem = [
      Product(
          id: 1,
          name: "DSLR",
          price: 100,
          image: "assets/products/dslr.jpg",
          qty: 1),
      Product(
          id: 2,
          name: "HandWash",
          price: 100,
          image: "assets/products/handwash.jpg",
          qty: 1),
      Product(
          id: 3,
          name: "Headphone",
          price: 100,
          image: "assets/products/headphone.jpg",
          qty: 1),
      Product(
          id: 4,
          name: "Iphone",
          price: 100,
          image: "assets/products/iphone.jpg",
          qty: 1),
      Product(
          id: 5,
          name: "Iphone",
          price: 100,
          image: "assets/products/laptop.png",
          qty: 1),
      Product(
          id: 6,
          name: "Watch",
          price: 100,
          image: "assets/products/watch.jpg",
          qty: 1),
      Product(
          id: 7,
          name: "Watch",
          price: 100,
          image: "assets/products/shoes.jpg",
          qty: 1),
      Product(
          id: 8,
          name: "Camera",
          price: 100,
          image: "assets/products/camera.webp",
          qty: 1),
      Product(
          id: 9,
          name: "Vinegar",
          price: 100,
          image: "assets/products/vinegar.webp",
          qty: 1),
    ];

    //send notification to provider
    notifyListeners();
  }

  List<Product> get products => productItem;
  List<Product> get basket => basketItem;
  Product get activeProducts => activeProductItem;

  setActiveProduct(Product p) {
    activeProductItem = p;
  }

//add ot remove any object in basket
  addOneItemtoBasket(Product p) {
    Product found = basketItem.firstWhere((element) => element.id == p.id,
        orElse: () => null);

    if (found != null) {
      found.qty += 1;
    } else {
      basketItem.add(p);
      calculateTotal();
    }
    notifyListeners();
  } //ef

//add ot remove any object in basket
  removeOneItemtoBasket(Product p) {
    Product found = basketItem.firstWhere((element) => element.id == p.id,
        orElse: () => null);

    if (found != null && found.qty == 1) {
      basketItem.remove(p);
    } else {
      found.qty -= 1;
    }

    notifyListeners();
  } //ef

  getBasketQty() {
    int total = 0;
    for (int i = 0; i < basketItem.length; i++) {
      total += basketItem[i].qty;
    }
    notifyListeners();
    return total;
  }

  // void toggleDone() {
  //   activeProductItem.qty++;
  // }

  // void decreaseDown() {
  //   activeProductItem.qty == 0 ? 0 : activeProductItem.qty--;
  // }

  // void updateTask(Product task) {
  //   task.toggleDone();
  //   notifyListeners();
  // }

  // // void removeCard(Product task) {
  // //   _addNewData.remove(task);
  // //   notifyListeners();
  // // }

  // void decrease(Product task) {
  //   if (task.qty == 1) {
  //     // removeCard(task);
  //     basketItem.remove(task);
  //   }
  //   task.decreaseDown();
  //   notifyListeners();
  // }

  void calculateTotal() {
    totalCartValue = 0;
    basket.forEach((f) {
      totalCartValue += f.price * f.qty;
    });
  }
}
