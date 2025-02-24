import 'package:get/get.dart';

import '../../core/models/model.dart';

class DataController extends GetxController implements GetxService{
  List<MyModel> _myModelList = [
    MyModel(
      name: "John Doe",
      id: 1,
      children: ["child1", "child2"],
    ),
    MyModel(
      name: "Jane Doe",
      id: 2,
      children: ["childA", "childB"],
    ),
  ];

  List<MyModel> get mymodelList => _myModelList;

}