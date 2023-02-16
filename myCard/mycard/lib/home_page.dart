import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 6, 6),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets\images\yo4.jpg'),
              ),
              Text(
                'Jeovany Bonilla',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 246, 246, 246),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Estudiante',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 150.0,
                child: Divider(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Card(
                color: Color.fromARGB(255, 0, 0, 0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_outlined,
                    color: Color.fromARGB(255, 253, 253, 253),
                  ),
                  title: Text(
                    '615-104-6547',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(255, 0, 0, 0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  title: Text(
                    'jeovany17.23@gmail.com',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'Itim',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
