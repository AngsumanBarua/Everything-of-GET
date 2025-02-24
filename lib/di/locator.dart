import 'package:for_practice/ui/pages/controllers/CountController.dart';
import 'package:for_practice/ui/pages/controllers/PracticeController.dart';
import 'package:get/get.dart';

Future <void> init() async{
  Get.lazyPut(()=>CountController());
  Get.lazyPut(()=>DataController());
}