import 'package:appassets/tela2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

// Classe Centralizadora

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaHome(),
    );
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(// Prove os componentes
      home: Scaffold(// Separa o app em até 3 partes
        appBar: AppBar(title: Text("Tela Assets"),),
        body: Center(
          child: Column(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyGn3QixEG3XpM4MKNsKYEy_c2-ZxwzDHRA&s", height: 400, width: 600,),
              SizedBox(height: 50,),
              Image.asset("assets/images/1.png", width: 250, height: 300,),

              Text("Esse é o texto com a fonte do projeto", style: TextStyle(fontFamily: "fonte"),),

              Text("Esse é o texto pela biblioteca do google fonts", style: GoogleFonts.syne(textStyle: TextStyle(fontSize: 20)),),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Tela2()));

              }, child: Icon(Icons.play_arrow))
            ],
          ),
        ),
      ),
    );
  }
}
