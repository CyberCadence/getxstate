import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:getxstate/Controllers/productCOntrolle.dart';

class HomePage extends StatelessWidget {
  final CountController controller = Get.put(CountController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return Column(
            children: [
              Text(
                '${controller.count.value}',
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar('hello add', 'getx_snackbar');
                  },
                  child: const Text('PRESS HERE'))
            ],
          );
        }),
      ),
    );
  }
}
