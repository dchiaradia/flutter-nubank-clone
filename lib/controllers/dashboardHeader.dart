import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

myHeader(String title, bool innerBoxIsScrolled) {
  return <Widget>[
    SliverAppBar(
      floating: true,
      forceElevated: innerBoxIsScrolled,
      pinned: true,
      titleSpacing: 0,
      backgroundColor: Colors.purple,
      actionsIconTheme: IconThemeData(opacity: 0.0),
      title: myTitle(title),
    ),
  ];
}

Row myTitle(titulo) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Center(
            child: Text(titulo,
                maxLines: 1,
                style: TextStyle(fontSize: 22, color: Colors.white))),
      ),
      Row(
        children: <Widget>[
          Icon(Icons.remove_red_eye_outlined),
          SizedBox(width: 16),
          Icon(Icons.settings),
          SizedBox(width: 16)
        ],
      ),
    ],
  );
}
