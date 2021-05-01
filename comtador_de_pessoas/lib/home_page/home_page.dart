import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // Nao é estático
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode Entrar!";

  void _changePeople(int delta) {
    setState(() {
      //Atualiza a tela
      _people += delta;

      if (_people < 0) {
        _infoText = " Mundo Inverido!";
      } else if (_people <= 10) {
        _infoText = "Pode Entrar!";
      } else {
        _infoText = "Lotado";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              "Pessoas: $_people",
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
                    onPressed: () {
                      _changePeople(1);
                    }, // Funcao anonima
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
                    onPressed: () {
                      _changePeople(-1);
                    }, // Funcao anonima
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}
