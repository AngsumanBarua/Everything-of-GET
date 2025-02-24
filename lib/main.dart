import 'package:flutter/material.dart';
import 'package:for_practice/ui/pages/screens/counting_screens.dart';
import 'package:for_practice/ui/routes/routes.dart';
import 'package:get/get.dart';
import 'di/locator.dart' as di;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: Routes.allRoutes(),
      home: CountingScreen(),
    );
  }
}