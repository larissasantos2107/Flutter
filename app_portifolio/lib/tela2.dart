import 'package:flutter/material.dart';


class kimetsu extends StatefulWidget {
  const kimetsu({super.key});

  @override
  State<kimetsu> createState() => _KimetsuState();
}

class _KimetsuState extends State<kimetsu> {
  String descricao = "Vamos descobrir mais sobre o Akaza";
  String imagem = "assets/images/luta.png";
String titulo   = "";


  void AkazaNormal (){
    setState(() { 
      titulo = "Hakuji ";
      descricao = "\n\ncomeça com uma infância pobre e a doença de seu pai, levando-o a roubar para obter remédios e ganhar um apelido de criminoso. Após a morte de seu pai e um período de fúria, ele encontrou um mestre de artes marciais, Keizou, e se apaixonou por sua filha, Koyuki. A tragédia da morte deles o levou a um banho de sangue, transformando-o no demônio Akaza por Muzan, que apagou suas memórias, mas manteve seu desejo por força. ";
      imagem = "assets/images/humano.webp";
    });
  }

  void AkazaOni(){
    setState(() {
      titulo = "Lua Superior 3:";
      descricao = "\n\n No mundo dos demônios, Hakuji tornou-se Akaza, um dos Doze Demônios da Lua, ocupando a posição de Lua Superior 3. Sua obsessão pela força e seu ódio pelos fracos, especialmente aqueles que envenenam o poço (ou seja, arruínam a vida de outros), são resquícios diretos da sua experiência humana e da sua incapacidade de proteger aqueles que amava. ";
      imagem = "assets/images/oni.webp";
    });
  }



   
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//vai prover os componentes para mim 
    debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey
         //cor de fundo do app
      ),
      home: Scaffold( //permite dividir a tela

        backgroundColor: const Color.fromARGB(255, 157, 207, 248),
        appBar: AppBar(title:Text("Sobre o Akaza",
        style: TextStyle(fontSize: 40,color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        toolbarHeight: 80,//tubarao em ingles
        //aumentar o tamanho da appbar
        ),
        body: ListView(children: [

          Center(//Ajuda a centralizar
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150,),
              Image.asset(imagem,width:imagem == 'assets/images/humano.webp' ? 250 : 450),
              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text("$titulo",style: TextStyle(fontSize: 20, fontFamily: "kimetsu") ),

              ],),
              Text("$descricao",style: TextStyle(fontSize: 20, fontFamily: "kimetsu")),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      AkazaNormal();
                    },
                    
                  child: Text("Humano")),
                    SizedBox(
                      width: 20,
                    ),

                    ElevatedButton(
                    onPressed: (){
                      AkazaOni();
                    }, child: Text("Oni")),
                    SizedBox(width: 20,),
                   



              ],)

            ],

          )
        )


        ],) 
        

      )
    );
  }
}