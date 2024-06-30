import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( Footballquiz());
}

class Footballquiz extends StatefulWidget {
  const Footballquiz({super.key});

  @override
  State<Footballquiz> createState() => _FootballquizState();
}

class _FootballquizState extends State<Footballquiz> {
  List<Icon> scoreKeeper = [
       Icon(
        Icons.check_box,
        color: Color.fromARGB(255, 7, 234, 45),
        size: 34.0,
      ),
       Icon(
        Icons.close,
        color: Colors.pink,
        size: 34.0,
      )
    ];
  @override
  Widget build(BuildContext context) {
     

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              const Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text("Here is my Question",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: () {
  setState(() {
    scoreKeeper.add(
      Icon(
        Icons.check_box,
        color: Color.fromARGB(255, 7, 234, 45),
        size: 34.0,
      ),
    );
  }
  );
},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(0, 12, 214, 72)),
                    ),
                    child: const Text(
                      'True',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    
                  )
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(0, 227, 56, 8)),
                    ),
                    child: const Text(
                      'False',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                           onPressed: () {
  setState(() {
    scoreKeeper.add(
          Icon(
        Icons.close,
        color: Colors.pink,
        size: 34.0,
      )
    );
  }
  );
},
                  ),
                ),
              ),
               Expanded(
                 child: Row(
                  children: scoreKeeper,
                               ),
               )
            ])),
      ),
    );
  }
}
