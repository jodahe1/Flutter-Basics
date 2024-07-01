import 'package:flutter/material.dart';
import 'package:footballquiz/quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() {
  runApp( MaterialApp(home: Footballquiz()));
}

class Footballquiz extends StatefulWidget {
  const Footballquiz({super.key});

  @override
  State<Footballquiz> createState() => _FootballquizState();
}

class _FootballquizState extends State<Footballquiz> {
   List<Icon> scoreKeeper = [];
     
     void checkanswer(bool useranswer)
     {
      
  setState(() {
    bool currentanswer=useranswer;
    if(currentanswer == questions.getQuestionAnswer())
    {
      questions.score++;
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
 questions.nextQuestion();
 if (questions.lastquestion())
    {
      Alert(context: context, title: "Finished", desc: "You Get ${questions.score} out of ${questions.questionCount}").show();
    scoreKeeper.clear();
    }
  }
  );
     }
    
   
    QuestionBank questions=QuestionBank();
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child:  Text("Welcome to Football Quiz" , 
            style: TextStyle(fontSize: 24.5 , color: Colors.white)
            ),
          ),
backgroundColor: const Color.fromARGB(160, 130, 123, 123),
        ),
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
                    
                    child:  Text(questions.getQuestionText(),
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

                                  checkanswer(true);
                                 },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(232, 12, 214, 73)),
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
                          const Color.fromARGB(233, 193, 49, 9)),
                    ),
                    child: const Text(
                      'False',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                           onPressed: () {
     checkanswer(false);
                                },
                  ),
                ),
              ),
               Expanded(
                 child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                   child: Row(
                    children: scoreKeeper,
                                 ),
                 ),
               )
            ])),
      ),
    );
  }
}
