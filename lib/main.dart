import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:p_15_getx/screens/first/bindings/first_binding.dart';
import 'package:p_15_getx/screens/first/view/first_screen.dart';
import 'package:p_15_getx/screens/second/view/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: FirstScreen.id, page: () =>  FirstScreen()),
        GetPage(name: SecondScreen.id, page: () =>  SecondScreen()),
      ],initialBinding: FirstBinding(),


      //default screen
      initialRoute: FirstScreen.id,

    );
  }
}
