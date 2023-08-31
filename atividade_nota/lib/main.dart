import 'package:atividade_nota/colaboradores.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colaboradores"),
        ),
        body:Padding(
          padding: EdgeInsets.all(21),
          child: Colaboradores(),
        ),
      ),
    ),
  );
}