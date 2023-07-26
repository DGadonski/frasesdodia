// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'dart:math';
import 'package:flutter/material.dart';

main(){
  runApp(Frasesdodia());
}

class Frasesdodia extends StatefulWidget {
  const Frasesdodia({super.key});

  @override
  State<Frasesdodia> createState() => _FrasesdodiaState();
}

class _FrasesdodiaState extends State<Frasesdodia> {

  List<String> _frases = [
    'Quem não se ira facilmente é melhor do que o homem valente, E quem controla a si mesmo é melhor do que quem conquista uma cidade. - Pro. 16:32',
    'Mas, quanto a isso, quem semear parcimoniosamente colherá também parcimoniosamente, e quem semear generosamente colherá também generosamente. - 2 Cor 9:6',
    'Portanto, todas as coisas que querem que os homens façam a vocês, façam também a eles. - Mat. 7:12',
    'Quem mostra favor ao pobre empresta a Jeová, E Ele o recompensará por isso. - Pro. 19:17',
  ];

  String _fraseGerada = 'Clique abaixo para gerar uma frase.';

  gerarFrase () {

    int numeroAleatorio = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroAleatorio];
    });

  }

  resetFrase () {    

    setState(() {
      _fraseGerada = 'Clique abaixo para gerar uma frase.';
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(          
          backgroundColor: Colors.green,
          title: Text("Frases do dia"),                    
        ),
        body: Container(
          width: double.infinity, // Ou poderia colocar o Container dentro de um Center.
          padding: EdgeInsets.all(16),          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic
                ),                
              ),
              ElevatedButton(                
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green) 
                  ),                                
                onPressed: gerarFrase, 
                child: 
                Text('Frase nova',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold 
                ),
                )
                ),
              ElevatedButton(                
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue) 
                  ),                                
                onPressed: resetFrase, 
                child: 
                Text('Reset',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold 
                ),
                )
                ),
            ],
          ),
        )
      ),
    );
  }
}