import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:for_practice/ui/pages/controllers/CountController.dart';

import '../../routes/routes.dart';
import '../controllers/PracticeController.dart';

class CountingScreen extends StatelessWidget{
  final CountController controller=Get.find<CountController>();
  final DataController controller2=Get.find<DataController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("You will be great just keep practicing"),),
      body: Center(
        child: GetBuilder<CountController>(
          builder: (count) {
            return Column(
              children: [
                //Obx(() => Text("${controller.cnt}", style: TextStyle(fontSize: 24))),
                Text("${count.cnt}", style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () => controller.increment(),
                  child: Text("Increment"),
                ),
                ElevatedButton(
                  onPressed: () => controller.decrement(),
                  child: Text("Decrement"),
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.secondScreen),
                  child: Text("Go to second screen"),
                ),

                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller2.mymodelList.length,
                    itemBuilder: (context, index) {
                      final model = controller2.mymodelList[index];

                      return ListTile(
                        title: Text("Name: ${model.name}"),
                        subtitle: Text("ID: ${model.id}, Children: ${model.children.join(", ")}"),
                        onTap: () {
                          Get.toNamed(Routes.secondScreen, arguments: model);
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          }
        )
      ),
    );
  }
}