import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'core/app_widget.dart';

void main() {
  runApp(MaterialApp(
      //widget
      title: "Contador de Pessoas",
      // Colunas verticais de informações
      home: Stack(
        children: [
          Image.asset(
            // Fica atras
            "images/restaurant.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Alinhamento do eixo principal (centro da tela)
            children: <Widget>[
              Text(
                "Pessoas: 0",
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
              Row(
                // Linha
                mainAxisAlignment: MainAxisAlignment.center, // Centralizar
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1",
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.red,
                        ),
                      ),
                      onPressed: () {}, // Funcao anonima
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.red,
                        ),
                      ),
                      onPressed: () {}, // Funcao anonima
                    ),
                  ),
                ],
              ),
              Text(
                "Pode Entrar!",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0),
              )
            ],
          )
        ],
      )));
}
