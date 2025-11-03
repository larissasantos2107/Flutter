import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class ApiAllPage extends StatefulWidget {
  const ApiAllPage({super.key});

  @override
  State<ApiAllPage> createState() => _ApiAllPageState();
}



class _ApiAllPageState extends State<ApiAllPage> {
  List<dynamic> ? valor; // Variavél que receberá o valor http

  @override
  void initState(){ // função para voltar ao inicio da pagina
    super.initState(); // sempre iniciar ela
    getvalor();

  }

  void getvalor() async { // função getvalor precisa ser assincrona, pois espera receber dados de outro serviço (http)
    final response = await http.get(Uri.parse("https://swapi.dev/api/people/")); // O get preisa do uri para ler os cabeçalhos http.

    if (response.statusCode == 200) { // Se o status da resposta for 200 (ok)
      final data = jsonDecode(response.body); // Converte o body json para string
      setState(() {
        valor = data["results"]; // results, pois é a lista a qual contem todos os registros da tabela people
      });
      
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: valor == null ? Center(child: CircularProgressIndicator()) : Center(child: ListView.builder( // para uma rolagem de tela, irei construir varios componentes
        itemCount: valor!.length, // propriedade que pergunta quantos componentes ira construir
        itemBuilder: (context, index){
          final item = valor![index];
          return Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: Text("${item["name"]}"),

              )
            ],

          );
        },

        )) ,
      ),
    );
  }
}