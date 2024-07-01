import 'package:footballquiz/question.dart';

class QuestionBank{
   int questionNum=0;
   int score=0;
   
  List<Question>  _questions=[
       Question("Cristiano Ronaldo has won the FIFA Ballon d'Or award 5 times.", true),
    Question("The current captain of the Brazilian national football team is Neymar.", false),
    Question("Lionel Messi began his professional career with FC Barcelona.", true),
    Question("The FIFA World Cup is held every four years.", true),
    Question("Pele, widely regarded as one of the greatest footballers of all time, played for Santos FC.", true),
    Question("The English Premier League is composed of 18 teams.", false),
    Question("The UEFA Champions League is an annual competition for the top European football clubs.", true),
    Question("The Italian Serie A is the top professional football league in Italy.", true),
    Question("The fastest recorded shot in football history was clocked at 131 miles per hour.", false),
    Question("The 2022 FIFA World Cup will be hosted by Qatar.", true),
    Question("The Bundesliga is the top professional football league in Germany.", true),
    Question("The UEFA European Championship is held every two years.", false),
    Question("Diego Maradona represented Argentina in four FIFA World Cup tournaments.", true),
    Question("The official mascot of the 2018 FIFA World Cup held in Russia was a wolf named Zabivaka.", true),
    Question("The French national team won the FIFA World Cup in 2018.", true),
    Question("The Copa America is the oldest international football tournament in the world.", true)
    ];
   int get questionCount => _questions.length;
   void nextQuestion()
   {
    if(questionNum < _questions.length-1)
     { questionNum++;}
   else
   {lastquestion();}
   }
bool lastquestion()
{
   if(questionNum == _questions.length-1)
  {
    questionNum=0;
    return true;}
  else
 { return false;}
}

  String getQuestionText() {
    return _questions[questionNum].questionText;
  }
  bool getQuestionAnswer() {
    return _questions[questionNum].questionAnswer;
  }

}