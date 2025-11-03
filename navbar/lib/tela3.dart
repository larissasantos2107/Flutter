import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 248, 177, 135),
          appBar: AppBar(title: Text("A Larissa Gosta de:", style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: "kimetsu" ),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 199, 117, 80),
          toolbarHeight: 80,
          
          ),

            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG6fhkq7jAyDuvs2V_UQ66LCgzH1Ct1YtGGQ&s", width: 900, height: 200,),
              Text("Sushi" , style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 156, 77, 3)), textAlign: TextAlign.end,),

            ],
          
              
              ),
            
        ),
            ),
        

    );
  }
}