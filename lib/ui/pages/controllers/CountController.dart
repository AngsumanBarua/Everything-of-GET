import 'package:get/get.dart';

class CountController extends GetxController implements GetxService{

  var cnt=0.obs;

  void increment(){
    cnt++;
    update();
  }
  void decrement(){
    cnt--;
    update();
  }
}