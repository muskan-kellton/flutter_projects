import 'questions.dart';

class Quizlist {
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions(ques: 'Windows is a GUI operating system', ans: true),
    Questions(ques: 'Pluto is the planet of our solar system', ans: false),
    Questions(ques: 'Cat is not an animal', ans: false),
    Questions(ques: 'Books are our friends', ans: true),
    Questions(ques: 'Indian flag has four colours', ans: true),
    Questions(ques: 'India is a democratic country', ans: true),
    Questions(ques: 'Whales are largest fish', ans: false),
    Questions(
        ques: 'Watching tv for long hours is good for health ', ans: false),
    Questions(ques: 'An apple a day keeps doctors away', ans: true),
    Questions(
        ques: 'Indian ocean is the largest ocean in the world', ans: false),
    Questions(ques: 'Human body has total 206 bones', ans: true),
    Questions(ques: 'Full form of PM is post morning', ans: false),
    Questions(
        ques: 'Flutter is the best app development technology', ans: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getAnswerText() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished(){
    if(_questionNumber>=_questionBank.length-1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }
}
