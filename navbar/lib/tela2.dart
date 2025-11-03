import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela1State();
}

class _Tela1State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 248, 157, 225),
          appBar: AppBar(title: Text("A Larissa Gosta de:", style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: "kimetsu" ),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 209, 121, 209),
          toolbarHeight: 80,
          
          ),

            body: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.network("https://lumiere-a.akamaihd.net/v1/images/2024_hb_disneyprincess_rapunzel_mobile_3497_78efae8d.jpeg?region=0%2C0%2C1024%2C768", width: 700, height: 500,),
              Text("Rapunzel" , style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 117, 13, 138)), textAlign: TextAlign.end,),
              Row(children: [
                Container(
                  width: 700,
                  height: 600,
                  color: Colors.amber,
                ),
                Container(
                  width: 700,
                  height: 600,
                  color: Colors.pink,
                ),
                Container(
                  width: 700,
                  height: 600,
                  color: Colors.red,
                ),
              ],

              )

              ],
            )
              )
            ],
          
              
              ),
            
        ),
            
        

    );
  }
}