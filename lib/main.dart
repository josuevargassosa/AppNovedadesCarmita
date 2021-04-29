import 'package:Novedades/modules/Navegacion_tabs/tabs/tabs_binding.dart';
import 'package:Novedades/modules/Navegacion_tabs/tabs/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(NovedadesCarmita());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(3, 25, 68, 0.9)));
}

class NovedadesCarmita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Arabic, no country code
        const Locale.fromSubtags(
            languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      theme: ThemeData(
          primaryIconTheme: IconThemeData(
        color: Colors.white,
      )),
      debugShowCheckedModeBanner: false,
      title: 'Novedades Carmita',
      home: TabsPage(),
      initialBinding: TabsBinding(),
      // getPages: AppPages.pages,
    );
  }
}
