import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getxstate/MOdel/product.dart';

class CountController extends GetxController {
  var count = 0.obs;
  increment() => count.value++;

  
}
