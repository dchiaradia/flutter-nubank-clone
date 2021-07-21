import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SingleChildScrollView myBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        createCard(
          Icons.credit_card,
          'Cartão de Credito',
          'Fatura Atual',
          'R\$ 1.590,55',
          TextButton(
            child: Text(
              'Limite disponivel de R\$ 19.890,92',
              style: TextStyle(fontSize: 12),
            ),
            onPressed: () {/* ... */},
          ),
        ),
        createCard(
          Icons.monetization_on_outlined,
          'Conta',
          'Saldo Disponivel',
          'R\$ 4,77',
          TextButton(
            child: null,
            onPressed: () {/* ... */},
          ),
        ),
        createCard(
          Icons.monetization_on_outlined,
          'Emprestimo',
          'Valor Disponivel de até',
          'R\$ 25.000,00',
          ElevatedButton(
            onPressed: () {},
            child: Text('Simular'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple)),
          ),
        ),
      ],
    ),
  );
}

Card createCard(IconData icone, String titulo, String subtitulo,
    String middleText, footerText) {
  return Card(
      color: Colors.white,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        ListTile(
          leading: Icon(icone),
          title: Text(titulo),
          subtitle: Text(subtitulo),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          alignment: Alignment.topLeft,
          child: Text(
            middleText,
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          alignment: Alignment.topLeft,
          child: footerText,
        ),
      ]));
}
