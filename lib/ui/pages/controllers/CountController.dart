import 'package:get/get.dart';

class CountController extends GetxController implements GetxService{

  var cnt=0.obs;

  void increment(){
    cnt++;
  }
  void decrement(){
    cnt--;
  }
}