import 'package:bdapp/post.dart';
import 'package:bdapp/put.dart';
import 'package:firebase_core/firebase_core.dart'; // importa a biblioteca firebase_core
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // importa a biblioteca cloud_firestore
import 'firebase_options.dart'; // importa o firebase options. ele serve como ponte para a plataforma que vc está usando

void main() async{ // função main vira assinccrona, pois espera o firebase inicializar
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp( // espera o firebase inicializar
  options: DefaultFirebaseOptions.currentPlatform // Define o tipo de plataforma que o firebase ira iniciar


);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaGet(),
    );
  }
}

class TelaGet extends StatefulWidget {
  const TelaGet({super.key});

  @override
  State<TelaGet> createState() => _TelaGetState();
}

class _TelaGetState extends State<TelaGet> { // é aqui que eu crio a logica da minha tela
  String? temperatura; // variavel que receberá o valor do banco

  @override
  void initState(){ // funcao que reinicia o ciclo toda vez que vc entrar na pagina
    super.initState();
    getvalue();
  }

  void getvalue(){ // função que busca o valor no banco 
  //crio uma instancia no banco que retona os dados
  // snapshots são os retornos
  // listen --> lista os retornos
    FirebaseFirestore.instance.collection("temperature").snapshots().listen(
      (snapshot){
        final data = snapshot.docs.first.data(); // retorna o primeiro documento da tabela
        setState(() { // usado para modificar o valor variavel
          temperatura = data["temperature"];

          
        });
      }
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela de Get do banco")),
        body: Center(
          child: Column(
            children: [
              Text("Essa é a sua temperatura do banco"),
              Text("$temperatura"),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage()));
              }, child: Text("Ir para a página POST!")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PutPage()));
              }, child: Text("Ir pagina PUT!!"))
            ],
          ),
        ),
      ),
    );
  }
}