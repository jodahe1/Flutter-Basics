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
          title: const Center( child:  Text("My Card")),
          backgroundColor: Color.fromARGB(255, 3, 88, 79),
        ),
        body:  const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               CircleAvatar(
                radius: 120.5,
                backgroundImage: AssetImage('Assets/Image/OIG.lR.jpg'),
              ),
               Text(
                "Jo DA",
                style: TextStyle(
                    fontSize: 53.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlaywriteSK-VariableFont_wght',
                    color: Color.fromARGB(31, 10, 213, 166)
                    ),
              ),
              Text('Flutter Developer',
              style: TextStyle(
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(240, 11, 209, 231)
              ),
              ),


            Card(
                color: Colors.amber,
                margin:  EdgeInsets.symmetric(vertical: 5 , horizontal: 20),
            child:  ListTile(
              leading: Icon( Icons.phone),
                title: Text('+251945897825',
                       style: TextStyle(
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 19, 20, 19)
                    )
                    ),
            )

              ),
            
              Card(
                color: Colors.amber,
                margin:  EdgeInsets.symmetric(vertical: 5 , horizontal: 20),
            child:  ListTile(
              leading: Icon( Icons.email),
                title: Text('Jodahe@flutter.com',
                       style: TextStyle(
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 19, 20, 19)
                    )
                    ),
            )

              )


            ],

          ),

        ),


        backgroundColor: const Color.fromARGB(255, 4, 37, 56),
      ),
    );
  }
}


