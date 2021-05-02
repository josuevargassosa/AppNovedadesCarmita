import 'package:Novedades/modules/Navegacion_tabs/historial/historial_binding.dart';
import 'package:Novedades/modules/Navegacion_tabs/inicio/inicio_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hexcolor/hexcolor.dart';

import 'tabs_controller.dart';

class TabsPage extends GetWidget<TabsController> {
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: [
          Icon(
            Icons.store,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.history,
            size: 30,
            color: Colors.white,
          ),
          // Icon(
          //   Icons.credit_card,
          //   size: 30,
          //   color: Colors.white,
          // ),
        ],
        // color: Color.fromRGBO(245, 142, 255, 0.9),
        color: HexColor("#F778FF"),
        buttonBackgroundColor: HexColor("#F99CFE"),
        backgroundColor: HexColor("#F99CFE"),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) => {
          print(controller.selectedIndex.value),
          controller.selectedIndex.value = index
        },
        letIndexChange: (index) => true,
      ),
      body: Obx(() => IndexedStack(
            index: controller.selectedIndex.value,
            children: [
              InicioPage(),
              HistorialPage(),
              // TarjetaPage()
            ],
          )),
    );
  }
}
