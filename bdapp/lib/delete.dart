import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  // Aqui vc roda a lógica
  List<dynamic>? valores; //variavel que ira receber os valores do bando

  @override
  void initState(){ // função que reinicia o estado da função get, para os dados ficarem atualizando sempre.
    super.initState();
    getValues();
  }

  void getValues(){ // função que busca o valor
    // Crio uma instancia do banco, na coleção temperature
    // Os retornos (snapshots) vou listar (listen)
    FirebaseFirestore.instance.collection("temperature").snapshots().listen(
      (snapshots){
        final data = snapshots.docs; // cria uma variável que recebe os documentos do retorno
        setState(() {
          valores = data; // se o valor da data for correto, a lista valores recebe data.
          // se não, a função get reinicia pelo initstate.
        });
        
      }
    );
  }

  Future<void> deleteValue (String id)async{
    await FirebaseFirestore.instance.collection("temperature").doc(id).delete();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela de delete")),
        body: valores == null ? Center(child: CircularProgressIndicator()) : 
        ListView.builder(
          itemCount: valores!.length, // quantos itens vou construir? R: O tamanho da lista valores
          itemBuilder: (context, index) {
            final item = valores![index]; // variável item, é a referencia de cada item da lista

            return ListTile(
              title: Text("Temperatura do banco:"),
              subtitle: Text("${item["temperature"]}"),
              trailing: GestureDetector( // identifica o gesto e transforma componentes comuns, em objetos com ações.
                child: Icon(Icons.remove), // elemento que terá ação
                onTap: (){deleteValue(item.id);}, // onTap: quando clicar faz alguma coisa

              ),
            );
          },
        )
      ),
    );
  }
}