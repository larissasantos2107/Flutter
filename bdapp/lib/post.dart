import 'package:bdapp/delete.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  //Variavel que observa oq o user digita!
  TextEditingController novatemperatura = TextEditingController();

  @override
  void initState(){ //Variavel que reinicia o estado toda vez que incluir uma nova temperatura no banco 
    super.initState();
    postValue();
  }

  String? erro; //variavel para o erro 
  Future<void> postValue() async {
    try{
      FirebaseFirestore.instance.collection("temperature").add(
        {
          "temperature": novatemperatura.text,
        }
      );
    }catch(e){
       setState(() {
         erro = "Erro ao enviar dados";
       }); 
    }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("Sua tela post!")),
        body:Center(
          child: Column(children: [
            Text("Insira aqui a temperatura desejada"),
            TextField(
              controller: novatemperatura,
            ),
            ElevatedButton(onPressed: postValue, child: Text("Enviar dados")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DeletePage()));
            }, child: Text("Ir para ágina Delete"))
          ],),
        )
      )
    );
  }
}