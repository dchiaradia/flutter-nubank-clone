import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          return _myHeader('Olá, Eduardo', true);
        },
        body: _myBody(),
      ),
      //bottomNavigationBar: (),
    );
  }
}

_myHeader(String title, bool innerBoxIsScrolled) {
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

SingleChildScrollView _myBody() {
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
    ],
  );
}
