import 'package:flutter/material.dart';
import 'package:qzgame/widget/quizz_widget.dart';

import '../model/quizz_model.dart';
import 'check_answer.dart';
List<QuizModal> quizListData = [
  QuizModal(
    id: '1',
    question: 'What is Flutter?',
    options: ['A programming language', 'A framework for developing cross-platform mobile applications', 'A tool for web programming', ' An open-source code compiler'],
    correctAnswer: 'A framework for developing cross-platform mobile applications',
  ),
  QuizModal(
    id: '2',
    question: 'What programming language is Flutter written in?',
    options: ['Java', 'Javascript', 'C++', 'Dart'],
    correctAnswer: 'Dart',
  ),
  QuizModal(
    id: '3',
    question: 'Which operating systems can Flutter develop applications for?',
    options: ['iOS and Android', 'Android and Windows', 'iOS and Windows', ' iOS, Android, and Windows'],
    correctAnswer: 'iOS and Android',
  ),
];

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int currentQuestion = 0;
  List listAnswer = [];


  void onAnswer(bool isCorrect){


    listAnswer.add({
      'quiz': quizListData[currentQuestion],
      'isCorrect': isCorrect,
    });
    if(currentQuestion>=quizListData.length-1){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  CheckAnswerPage(listAnswer: listAnswer,)));
      return;
    }
    setState(() {
        currentQuestion++;
    });
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: QuizzWidget(quizModal: quizListData[currentQuestion], answerQuestion: onAnswer
      ),
    ),
    );
  }
}
