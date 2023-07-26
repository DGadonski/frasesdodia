// ignore_for_file: prefer_const_constructors

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
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 3
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                'Clique abaixo para gerar uma frase.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic
                ),                
              ),
              ElevatedButton(                
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green) 
                  ),                                
                onPressed: (){}, 
                child: 
                Text('Nova frase',
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