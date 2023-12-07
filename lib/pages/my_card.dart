import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shoping_card_getx/controller/my_controller.dart';
import 'package:simple_shoping_card_getx/pages/total_page.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10)),
                color: Colors.blue
            ),
            child: Center(child: const Text("Simple shopping cart by Getx",style: TextStyle(fontSize: 20,color: Colors.white),)),
          ),

          Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      'Books',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red),
                      child: IconButton(
                        onPressed: () {
                          c.increment();
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Obx(() => Text(
                          c.book.toString(),
                          style: const TextStyle(fontSize: 30),
                        )),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red),
                      child: IconButton(
                        onPressed: () {
                          c.decrement();
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Pens',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red),
                      child: IconButton(
                        onPressed: () {
                          c.incrementPens();
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Obx(() => Text(
                      c.pens.toString(),
                      style: const TextStyle(fontSize: 30),
                    )),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red),
                      child: IconButton(
                        onPressed: () {
                          c.decrementPens();
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        Get.to(TotalPage());
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
                            child: Text('Total')),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
