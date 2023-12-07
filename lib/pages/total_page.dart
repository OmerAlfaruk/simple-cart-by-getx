import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shoping_card_getx/pages/my_card.dart';
import 'package:simple_shoping_card_getx/controller/my_controller.dart';

class TotalPage extends StatelessWidget {
 TotalPage({super.key});
final MyController controller=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Text("Total Items",style: TextStyle(color: Colors.blue),),
            const SizedBox(height: 20,),
            Obx(() => Text("${controller.sum}",style: const TextStyle(fontSize: 30),)),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 150,
                height: 40,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue
                ),
                child:  const Align(
                    alignment: Alignment.center,
                    child: Text('Go Back')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
