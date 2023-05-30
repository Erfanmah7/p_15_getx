import 'package:get/get.dart';

import '../../../services/api_service.dart';
import '../controller/first_controller.dart';

class FirstBinding extends Bindings{
  @override
  void dependencies() {

    Get.put(ApiService());
    Get.put(FirstController());


  }

}