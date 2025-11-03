import 'package:flutter/material.dart';
import 'package:navbar/tela1.dart';
import 'package:navbar/tela2.dart';
import 'package:navbar/tela3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
      
      
      
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myindex = 0; // variavel que indica o index da tela desejada

  void changeindex(int newindex){ // função que permite alterar o index
    setState(() {
      myindex = newindex;
    });

  }

  List<Widget> screens = [ // lista de telas
    Tela1(),
    Tela2(),
    Tela3()

  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: screens.elementAt(myindex),// o conteúdo será algum elemento da lista
        bottomNavigationBar: // Footer, barra de navegação
        BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(label: "Tela1", icon: Icon(Icons.account_circle)),
          BottomNavigationBarItem(label: "Tela2", icon: Icon(Icons.account_circle)),
          BottomNavigationBarItem(label: "Tela3", icon: Icon(Icons.account_circle)),

         ],
         currentIndex: myindex, // CurrentIndex: qual o index atual? R:my index.
         onTap: changeindex, // onTap: Qual a funcao que muda o index? R: Changeindex

         ),

      ),
    );
  }
}