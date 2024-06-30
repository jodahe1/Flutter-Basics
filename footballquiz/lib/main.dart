import 'package:flutter/material.dart';
import 'package:footballquiz/question.dart';


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
      const  Icon(
        Icons.check_box,
        color: Color.fromARGB(255, 7, 234, 45),
        size: 34.0,
      ),
       const Icon(
        Icons.close,
        color: Colors.pink,
        size: 34.0,
      )
    ];

    
    int questionNum=0;
    List<Question>  questions=[
      Question("Buzz Aldrins mothers maiden name was 1",true),
      Question("Buzz Aldrins mothers maiden name was 21",false),
      Question("Buzz Aldrins mothers maiden name was 31",true),
     Question("Buzz Aldrins mothers maiden name was 41",false),
       Question("Buzz Aldrins mothers maiden name was 51",false),
          Question("Buzz Aldrins mothers maiden name was 61",false),
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
               Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    
                    child:  Text(questions[questionNum].questionText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        )
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    onPressed: () {
  setState(() {
    bool currentanswer=true;
    if(currentanswer == questions[questionNum].questionAnswer)
    {
scoreKeeper.add(
      const Icon(
        Icons.check_box,
        color: Color.fromARGB(255, 7, 234, 45),
        size: 34.0,
      ),
    );
    }
    else{
      scoreKeeper.add(
         const Icon(
        Icons.close,
        color: Colors.pink,
        size: 34.0,
      )
    );
    }
    questionNum++;
    
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
    bool currentanswer=false;
   if(currentanswer == questions[questionNum].questionAnswer)
    {
scoreKeeper.add(
      const Icon(
        Icons.check_box,
        color: Color.fromARGB(255, 7, 234, 45),
        size: 34.0,
      ),
    );
    }
    else{
      scoreKeeper.add(
         const Icon(
        Icons.close,
        color: Colors.pink,
        size: 34.0,
      )
    );
    }
    questionNum++;
    
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
