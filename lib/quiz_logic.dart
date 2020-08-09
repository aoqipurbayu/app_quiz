import 'package:app_quiz/question.dart';

class QuestionLogic{
  int questionNumber = 0;

  List<Question> questionList = [
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
    Question('Makan dengan tangan kanan',true),
  ];
  String getQuestion() => questionList[questionNumber].question;
  int getTotalQuestion() => questionList.length;
  int getQuestionNumber() => questionNumber + 1;
  bool getCorrectAnswer() => questionList[questionNumber].answer;

  void nextQuestion() {
    if (questionNumber < questionList.length - 1) {
      questionNumber++;
      print(questionNumber);
    }
  }
  bool isFinished() {
    if (questionNumber >= questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => questionNumber = 0;
}