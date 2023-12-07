import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var book = 0.obs;
  var pens = 0.obs;
  int get sum=>book.value+pens.value;
  increment() {
    book.value++;
  }

  decrement() {
    if (book.value <= 0) {
      Get.snackbar("Buying Books", "cannot be less than zero",
          icon: const Icon(Icons.alarm), barBlur: 20,isDismissible: true,duration: const Duration(seconds: 3));
    }
    else{
     book.value--;
    }
  }

  incrementPens() {
   pens.value++;
  }

  decrementPens() {
   if (pens.value <= 0) {
    Get.snackbar("Buying pens", "cannot be less than zero",
        icon: const Icon(Icons.alarm), barBlur: 20,isDismissible: true,duration: const Duration(seconds: 3));
   }
   else{
    pens.value--;
   }
  }
}
