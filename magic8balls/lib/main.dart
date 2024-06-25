import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
home: Scaffold(
appBar: AppBar(

  title:const Center(
    child:  Text('Ask me anything' , 
    style: TextStyle(color: Colors.white , fontSize: 35.0),

    ),
  ),

  backgroundColor: const Color.fromARGB(255, 16, 137, 236),
),

body:  magicball(),

backgroundColor: const Color.fromARGB(255, 6, 178, 236),
),
  )
    );
   
}

class magicball extends StatefulWidget {
  const magicball({super.key});

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
   int num=2;
  @override
  Widget build(BuildContext context) {
   
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            num=Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$num.png')),
    );
  }
}