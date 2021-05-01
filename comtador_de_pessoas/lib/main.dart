import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/app_widget.dart';

void main() {
  runApp(MaterialApp(
      //widget
      title: "Contador de Pessoas",
      // Colunas verticais de informações
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Alinhamento do eixo principal (centro da tela)
        children: <Widget>[
          Text(
            "Pessoas: 0",
            style:
                TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold),
          ),
          Text(
            "Pode Entrar!",
            style:
            TextStyle(color: Colors.lightBlue, fontStyle: FontStyle.italic,
            fontSize: 30.0),
          )
        ],
      )));
}
