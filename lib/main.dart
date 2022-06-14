import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
      "Melhor um pássaro na mão do que dois voando",
      "Viva que a vida é uma festa",
      "Miau",
      "Vitor amaral",
      "Ana zika"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase !";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState((){
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    //esqueleto
    return Scaffold(
     appBar:AppBar(
       title: Text("Frases do dia"),
       backgroundColor: Colors.green,
     ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        //decoration: BoxDecoration( border: Border.all( width: 3, color: Colors.black)),
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/logo.png"),
                Text(_fraseGerada, textAlign: TextAlign.justify, style: TextStyle( fontSize: 17, fontStyle: FontStyle.italic, color: Colors.black )),
            RaisedButton(
                padding: EdgeInsets.all(20),
                onPressed: _gerarFrase,
                color: Colors.green,
                child: Text ("Obtenha uma frase", style: TextStyle( color: Colors.white))
            )
          ],
        ),
      ) ,
       
    );
  }
}
