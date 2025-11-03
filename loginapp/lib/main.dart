import 'package:flutter/material.dart';
import 'package:loginapp/api.dart';
import 'package:loginapp/apiall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage()
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variável que observa o que foi digitado
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  // Variável com o valor correto
  String correctUser = "Lari";
  String CorrectPassword = "123";
  // Variável que armazena mensagem de erro
  String erro = "";

  void Login(){
    if (user.text == correctUser && password.text == CorrectPassword) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ApiPage()));

      setState(() { // serve para não deixar mensagem de erro mesmo estando certo
        erro = "";
      }); 
    }else{
      setState(() {
        erro = "Existem credenciais incorretas";
      });
    }
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Icon(Icons.person, size: 150,),

              TextField(
                controller: user,
                decoration: InputDecoration(
                  hintText: "Insira aqui o seu usuário"
                ),
              ),

              TextField( // campo para o usuário digitar
                controller: password, // qual variável que observa oq foi digitado
                decoration: InputDecoration( // decpração do seu text field
                  hintText: "Insira aqui a sua senha" // label dica para o text field
                ),
                obscureText: true, // deixa a senha privada ****
              ),

              ElevatedButton(onPressed: Login, child: Text("Logar")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ApiAllPage()),);
              },
              child: Text("Api All"),
              ),

              Text("$erro")


            ],
          )
        ),
      ),
    );
  }
}