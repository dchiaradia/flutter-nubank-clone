import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Padding menuSlide() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20, top: 20),
    child: Container(
      width: Get.size.width,
      height: 96,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 15,
          ),
          MenuSlideItem('Pix', Icons.monetization_on_outlined),
          MenuSlideItem('Pagar', Icons.qr_code_2_outlined),
          MenuSlideItem('Indicar amigos', Icons.people_outline),
          MenuSlideItem('Transferir', Icons.monetization_on_outlined),
          MenuSlideItem('Depositar', Icons.monetization_on_outlined),
          MenuSlideItem('Bloquear', Icons.monetization_on_outlined),
        ],
      ),
    ),
  );
}

Widget MenuSlideItem(String label, IconData icone) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white30.withOpacity(0.1),
      ),
      width: 96,
      child: TextButton(
        onPressed: () {},
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icone,
                size: 25,
                color: Colors.white,
              ),
              Text(
                label,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
