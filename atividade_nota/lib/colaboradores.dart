import 'package:flutter/material.dart';

class Colaboradores extends StatefulWidget {
  @override
  _ColaboradoresState createState() => _ColaboradoresState();
}

//-----------------------------------------------------------------------
class _ColaboradoresState extends State<Colaboradores> {
  final listaColab = [
    {
      'Nome': 'Juliana Albuquerque',
      'Cargo': 'Coordenadora de Apoio',
      'Telefone': '(81) 99731-8333',
      'E-mail': 'julianaalbuquerque@email.com',
      'imagem': '219969.png',
    },
    {
      'Nome': 'Ângela Tais',
      'Cargo': 'Chefe de Obras',
      'Telefone': '(81) 99762-9832',
      'E-mail': 'angelatais@email.com',
      'imagem': '219969.png',
    },
    {
      'Nome': 'Carlos Alexandre',
      'Cargo': 'Suporte',
      'Telefone': '(81) 99631-2343',
      'E-mail': 'carlosalexandre@email.com',
      'imagem': '4128176.png',
    },
    {
      'Nome': 'Ana Beatriz',
      'Cargo': 'Atendente',
      'Telefone': '(81) 99746-2398',
      'E-mail': 'anabeatriz@email.com',
      'imagem': '219969.png',
    },
  ];
//--------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listaColab.length,
        itemBuilder: (context, i) {
          var dados = listaColab[i];
          return Column(
          
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/" + dados['imagem'].toString(),
                    width: 82,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dados['Nome'].toString(),
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(dados['Cargo'].toString()),
                      Text(dados['Telefone'].toString()),
                      Text(dados['E-mail'].toString()),
                    ],
                  ),
                ],
              ),
            Divider(
              color: Color.fromARGB(255, 127, 127, 127),
            )
            ],
          );
        }
    );
  }
}
