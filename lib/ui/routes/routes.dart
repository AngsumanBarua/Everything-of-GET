import 'package:get/get.dart';
import '../pages/screens/counting_screens.dart';
import '../pages/screens/secondScreen.dart';

class Routes {
  static const String firstScreen = "/";
  static const String secondScreen = "/secondScreen";

  static List<GetPage> allRoutes() {
    return [
      GetPage(name: firstScreen, page: () => CountingScreen()),
      GetPage(name: secondScreen, page: () => Secondscreen()),
    ];
  }
}