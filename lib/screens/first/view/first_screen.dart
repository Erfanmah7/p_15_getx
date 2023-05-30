import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_15_getx/screens/first/controller/first_controller.dart';
import 'package:p_15_getx/screens/second/view/second_screen.dart';

import '../../../services/api_service.dart';

class FirstScreen extends StatelessWidget {
  static String id = '/first';

  // final api = Get.put(ApiService());
  // final firstController = Get.put(FirstController());

  final api = Get.find<ApiService>();
  final firstController = Get.find<FirstController>();

  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text('Value: ${firstController.count}');
            }),
            ElevatedButton(
              onPressed: () {
                firstController.incrementer();
              },
              child: Text('incrementer'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepPurple)),
              onPressed: () => Get.snackbar('title', 'message'),
              child: Text('snackbar'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () => Get.changeTheme(ThemeData.dark()),
              child: Text('change'),
            ),
            ElevatedButton(
              onPressed: () => print(api.getApi()),
              child: Text('print'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.to(const SecondScreen());
          // Get.off(SecondScreen());
          Get.toNamed(SecondScreen.id, arguments: {'name': 'muhammad'});
          // Get.offNamed(SecondScreen.id);
        },
        child: Obx(
          () {
            return Text(
              firstController.count.toString(),
            );
          },
        ),
      ),
    );
  }
}
