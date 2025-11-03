import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Roda o aplicativo
}

// Digite st e escolha entre stateless e statefull

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(// Ele fornece os componentes para a sua tela
      home: Scaffold( // Ele permite dividir o app em appbar e contúdo(body)
          appBar: AppBar(title: Text("A Elo é feia e a Debs é Diva"),),
          body: Column( // Elementos um abaixo do outro
            children: [ // Filhos do meu orientador
              Text("Bem vindo ao aplicativo especial"),
              Text("Nesse aplicativo você consegue votar se a elo é especial sim ou com certeza"),
              ElevatedButton(onPressed: (){}, child: Icon(Icons.add_sharp)), // ElevateButton é um botão que tem a possibilidade de fazer animação
              // Onpressed é a função ao clicar
              // Child você pode colocar texto ou icone
              // (){} --> é uma função anonima, ou seja, só acontece nesse botão
            ],
          ),
      )
    ); 
  }
}