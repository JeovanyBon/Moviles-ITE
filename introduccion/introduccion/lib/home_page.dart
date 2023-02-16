import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Introduccion",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 2, 0, 0)))),
        leading: const Icon(
          Icons.mobile_friendly,
          size: 25,
          color: Color.fromARGB(255, 39, 14, 163),
        ),
      ),
      body: Text("Hola pai"),
    );
  }
}
