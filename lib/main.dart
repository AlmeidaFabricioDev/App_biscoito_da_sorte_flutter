import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var wordsList = [
    "Todos os dias são uma oportunidade para recomeçar e para planejar um novo caminho. Siga com fé e acredite em você.",
    "Somos capazes de fazer muito mais do que imaginamos!",
    "Há ainda tanta coisa linda na vida para se descobrir.",
    "Abra os olhos e aventure-se nessa jornada chamada vida!",
    "Há tantas pessoas que torcem por você na vida.",
    "Siga sempre confiante do seu potencial!",
    "Hoje é um novo dia. Não fique pensando no ontem.",
    "A coragem está um passo à frente do medo.",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos."
  ];

  var imgBiscoito = "images/biscoito_fechado.png";

  var fraseDaSorte = "Clique no botão para gerar a frase!";

  void quebrarBiscoito() {
    var numero = Random().nextInt(wordsList.length);
    setState(() {
      fraseDaSorte = wordsList[numero];

      imgBiscoito = "images/biscoito-aberto.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biscoito da sorte"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imgBiscoito),
              radius: 100,
              backgroundColor: Colors.white,
            ),
            Text(
              fraseDaSorte,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Pacifico'
                ),
            ),
            ElevatedButton(
              onPressed: quebrarBiscoito,
              child: Text(
                "QUEBRAR BISCOITO",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Defina o raio desejado
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
