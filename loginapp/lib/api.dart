import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  String? valor; // Variavél que receberá o valor http

  @override
  void initState(){ // função para voltar ao inicio da pagina
    super.initState(); // sempre iniciar ela
    getvalor();

  }

  void getvalor() async { // função getvalor precisa ser assincrona, pois espera receber dados de outro serviço (http)
    final response = await http.get(Uri.parse("https://swapi.dev/api/people/1/")); // O get preisa do uri para ler os cabeçalhos http.

    if (response.statusCode == 200) { // Se o status da resposta for 200 (ok)
      final data = jsonDecode(response.body); // Converte o body json para string
      setState(() {
        valor = data["name"];
      });
      
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: valor == null ? Center(child: CircularProgressIndicator()) : Center(child: Text("$valor"),) ,
      ),
    );
  }
}