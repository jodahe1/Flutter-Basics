import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Card"),
          backgroundColor: const Color.fromARGB(255, 124, 241, 229),
        ),
        body:const  Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
         
            children: <Widget>[
          CircleAvatar(
            radius: 120.5,
            backgroundImage: AssetImage('Assets/Image/OIG.lR.jpg'),
          ),
          Text(
            "Jo DA",
            style: TextStyle(
              fontSize: 93.5,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(31, 181, 16, 16)
            ),
          )
            ],
            ),
        ),
          backgroundColor: const Color.fromARGB(255, 139, 120, 47),
      ),
    );
  }
}