import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/dashboard.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.native,
      locale: Locale('pt', 'BR'),
      theme: new ThemeData(scaffoldBackgroundColor: Colors.purple),
      getPages: [
        GetPage(
          name: '/',
          page: () => DashBoardPage(),
        ),
      ],
    ));
