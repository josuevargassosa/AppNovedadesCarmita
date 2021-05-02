import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import 'historial_controller.dart';

class HistorialPage extends GetWidget<HistorialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Novededades Carmita")),
      body: Center(
        child: Text("Historial"),
      ),
    );
  }
}

