import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: QuizPages(),
    ));
  }
}

class QuizPages extends StatefulWidget {
  const QuizPages({super.key});

  @override
  State<QuizPages> createState() => _QuizPagesState();
}

class _QuizPagesState extends State<QuizPages> {
  List<Icon> puntuacion = [];

  List<String> preguntas = [
    'Los globulos rojos viven 4 meses?',
    'El cuerpo humano adulto tiene 306?',
    'La cobalamina es una vitamina?'
  ];
  int numeroPreguntas = 0;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              preguntas[numeroPreguntas],
              style: TextStyle(fontSize: 30),
            )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 77, 225),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        puntuacion.add( 
                          Icon(
                          Icons.check,
                          color: Colors.green,
                          )
                      );
                      numeroPreguntas++;
                    });
                  },
                    child: Text(
                      "Verdadero",
                      style: TextStyle(color: Color.fromARGB(255, 6, 6, 6)),
                    ))),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 186, 42), borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        puntuacion.add( 
                          Icon(
                          Icons.close,
                          color: Colors.red,
                          )
                      );
                      numeroPreguntas++;
                    });
                    },
                    child: Text(
                      "Falso",
                      style: TextStyle(color: Colors.black),
                    ))),
          ),
        ),
        Row(
          children: puntuacion,
        )
      ],
    );
  }
}