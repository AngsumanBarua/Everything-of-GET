import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:for_practice/ui/pages/controllers/CountController.dart';

class Secondscreen extends StatelessWidget{
  final CountController controller=Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("You will be great I promise"),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()=>Text("${controller.cnt}")),
              ElevatedButton(
                onPressed: (()=>controller.increment()),
                child: Text("Increment"),
              ),
              ElevatedButton(
                onPressed: (()=>controller.decrement()),
                child: Text("Decrement"),
              ),
              ElevatedButton(
                onPressed: (()=>Get.back()),
                child: Text("Get back")
              )
            ],
          )
      ),
    );
  }
}