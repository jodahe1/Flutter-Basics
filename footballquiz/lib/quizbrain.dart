import 'package:footballquiz/question.dart';

class QuestionBank{
   int questionNum=0;
  List<Question>  _questions=[
      Question("Buzz Aldrins mothers maiden name was 1",true),
      Question("Buzz Aldrins mothers maiden name was 21",false),
      Question("Buzz Aldrins mothers maiden name was 31",true),
     Question("Buzz Aldrins mothers maiden name was 41",false),
       Question("Buzz Aldrins mothers maiden name was 51",false),
          Question("Buzz Aldrins mothers maiden name was 61",false),
    ];
   
   int nextQuestion()
   {
    return questionNum++;
   }

  String getQuestionText() {
    return _questions[questionNum].questionText;
  }
  bool getQuestionAnswer() {
    return _questions[questionNum].questionAnswer;
  }

}