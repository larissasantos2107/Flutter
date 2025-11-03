import 'package:app_portifolio/tela2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 157, 207, 248),
          appBar: AppBar(title: Text("Portfólio", style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: "kimetsu" ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 80,
          
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: 
              
              Column(
                children: [
                  Image.asset("assets/images/akaza.png",width: MediaQuery.of(context).size.width * 0.4, height: MediaQuery.of(context).size.height * 0.2,),
                  Text("Lua Superior Três:", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 47, 119, 179)), textAlign: TextAlign.end,),
                  SizedBox(height: 20,),
                  Text("Akaza", style: TextStyle(fontSize: 50, color: const Color.fromARGB(255, 7, 61, 155)), textAlign: TextAlign.end,),

                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> kimetsu()));

              }, child: Text("Clique aqui"))
                ],
              )
              
      ),
            ],
          ),
        ),
        ),
    );;
  }
}