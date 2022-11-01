import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notificacoes/services/theme_services.dart';

class Livros extends StatefulWidget {
  const Livros({Key? key}) : super(key: key);

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text("Theme data",
            style: TextStyle(
              fontSize: 30
            ),
          ),
        ],
      ),
    );
  }

  _appBar(){
    return AppBar(
      leading: GestureDetector(
        onTap: (){
          ThemeService().switchTheme();
        },
        child: Icon(Icons.nightlight_round,
        size: 20,),
      ),
      actions: [
        Icon(Icons.person,
          size: 20,),
        SizedBox(width: 20,),
      ],
    );
  }
}
