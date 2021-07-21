import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dashboardHeader.dart';
import '../controllers/dashboardBody.dart';
import '../controllers/menuSlide.dart';

class DashBoardPage extends StatefulWidget {
  static var tag = '/blankPage';
  @override
  State<StatefulWidget> createState() {
    return DashBoardPageState();
  }
}

class DashBoardPageState extends State<DashBoardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return myHeader('Olá, Eduardo', true);
          },
          body: myBody(),
        ),
        bottomNavigationBar: menuSlide());
  }
}
