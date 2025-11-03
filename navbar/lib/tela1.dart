import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 157, 207, 248),
          appBar: AppBar(title: Text("A Larissa Gosta de:", style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: "kimetsu" ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 80,
          
          ),

            body: ListView(
              children: [
                Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.network("https://jornalismorio.espm.br/wp-content/uploads/2021/12/confira-agora-os-25-melhores-animes-que-ja-foram-criados-1.jpg", width: 600, height: 400,),
                Text("Anime" , style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 47, 119, 179)), textAlign: TextAlign.start),
                Container(
                  width: 150,
                  height: 600,
                  color: Colors.amber,
                ),
                Container(
                  width: 150,
                  height: 600,
                  color: Colors.cyanAccent,
                ),
                Container(
                  width: 150,
                  height: 600,
                  color: Colors.lightGreenAccent,
                ),
              ]
              
                )
            )
            
            ],
          
              
              ),
            
        ),
            
        

    );
  }
}