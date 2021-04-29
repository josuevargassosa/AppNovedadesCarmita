import 'package:Novedades/modules/Navegacion_tabs/inicio/inicio_controller.dart';
import 'package:get/get.dart';

import 'tabs_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabsController());
    Get.lazyPut(() => InicioController());
    // Get.lazyPut(() => TarjetaController());
    // Get.lazyPut(() => PromocionController());
  }
}
