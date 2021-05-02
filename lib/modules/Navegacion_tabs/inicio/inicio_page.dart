import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:hexcolor/hexcolor.dart';
import 'inicio_controller.dart';

class InicioPage extends GetWidget<InicioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: HexColor("#F778FF"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.format_list_numbered_sharp),
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined), 
            onPressed: (){}
          ),
          IconButton(
            icon: Icon(Icons.logout), 
            onPressed: (){}
          ),
        ],

        title: 
          Center(child: Text("Novededades")),
        
        titleSpacing: 0.0,
        // bottom: TabBar(
        //   controller: controller,
        //   indicatorColor: Colors.white,
        //   labelColor: Colors.white,
        //   tabs: <Widget>[
        //     Tab(icon: Icon(Icons.home),)
        //   ],
        // ),
      ),
      body: Center(
        child: Text("Hola Mundo"),
      ),
    );
  }
}