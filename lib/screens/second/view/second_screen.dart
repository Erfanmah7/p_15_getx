import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_15_getx/screens/first/controller/first_controller.dart';
import 'package:p_15_getx/screens/first/view/first_screen.dart';
import 'package:p_15_getx/services/api_service.dart';

class SecondScreen extends StatelessWidget {
  static String id = '/second';
  final api2 = Get.find<ApiService>();
  final firstController = Get.find<FirstController>();

  SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          
         // Get.back();
         // Get.offNamed(FirstScreen.id);
          Get.toNamed(FirstScreen.id);
          
        },),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(api2.getApi()),
          Obx(() {
            return Text(firstController.count.toString());
          }),
          Text(Get.arguments['name']),
        ],
      )),
    );
  }
}
