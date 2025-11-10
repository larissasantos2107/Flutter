import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}
class _PutPageState extends State<PutPage> {
// Aqui você coda aqui
// Criamos um map de controladores, pois cada registro deve ter o seu proprio "Fofoqueiro"

Map<String, TextEditingController> Controladores = {};

List<dynamic>? values; // lista que ira receber todos os valores do banco

@override
void initState(){ // função que reinicia o estado da pagina
  super.initState();
  getValues();
}

void getValues(){
  FirebaseFirestore.instance.collection("temperature").snapshots().listen(
    (snapshots){
      final data = snapshots.docs;

      setState(() {
        values = data;
        for(dynamic doc in data){ // Para cada documento, vou ter um text editing que controla os valores pelo id.
          Controladores[doc.id] = TextEditingController();
        }
      });
    }

  );
}

Future<void> putValue(String id ) async{
  FirebaseFirestore.instance.collection("temperature").doc(id).set(
    {
      "temperature": Controladores[id]!.text,
    }

  );
}

@override
void dispose(){ // Descartar valores preenchidos anteriormente
  for(dynamic value in Controladores.values){
    value.dispose();
  }
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Pagina PUT")),
        body: values == null? Center(child: CircularProgressIndicator()):
        ListView.builder(
          itemCount: values!.length, // Quantos itens vou construir? O tamanho da lista values
          itemBuilder: (context, index){ // o que vou construir para cada item?
            final item = values![index];

            return ListTile(
              title: Text("Temperatura atual ${item["temperature"]}"),
              subtitle: Column(
                children: [
                  TextField(
                    controller: Controladores[item.id],
                  ),
                  ElevatedButton(onPressed: (){putValue(item.id);}, child: Text("Enviar"))
                ],
              ),
            );

          }
        )
      )
    );
  }
}