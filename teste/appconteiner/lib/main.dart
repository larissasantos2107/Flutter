import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget { // Stateless é a tela estática
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Prova os componentes para a tela
    debugShowCheckedModeBanner: false,
      home: Scaffold( // Separa a tela em 2 partes
      appBar: AppBar(title: Text("Bem vindo divas"),centerTitle: true, toolbarHeight: 120, backgroundColor: Colors.blue,),
      body: 
      Column(
        // Main é o eixo principal eixo y
        // Você pode alinhar em start center ou end
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // Cross é o eixo segundário, no caso da coluna o eixo x
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


        Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

        Container(
        width: 200, // largura
        height: 200, // altura
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text("1", style: TextStyle(fontSize: 50, color: Colors.white), textAlign: TextAlign.center,),

      ),
        Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text("2", style: TextStyle(fontSize: 50, color: Colors.white), textAlign: TextAlign.center,),

      ),
        ],),
       
        
    
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text("3", style: TextStyle(fontSize: 50, color: Colors.white), textAlign: TextAlign.center,),
      ),
        
        Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text("4", style: TextStyle(fontSize: 50, color: Colors.white), textAlign: TextAlign.center,),

      ),
        
        ],
      )


        ],
      ),
      


      )
    );
  }
}

