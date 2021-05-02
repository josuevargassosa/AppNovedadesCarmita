import 'package:get/get.dart';

import 'historial_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistorialController());
  }
}
