import 'package:flutter/material.dart';

import '../widget/check_question_widget.dart';

class CheckAnswerPage extends StatefulWidget {
  final List listAnswer;
  const CheckAnswerPage({Key? key, required this.listAnswer}) : super(key: key);

  @override
  State<CheckAnswerPage> createState() => _CheckAnswerPageState();
}

class _CheckAnswerPageState extends State<CheckAnswerPage> {
  @override
  Widget build(BuildContext context) {
    print("listAnswer: ${widget.listAnswer}");
    return Scaffold(
      body: Container(
        color: Colors.purple.shade300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Text('You are correct ${widget.listAnswer.where((element) => element['isCorrect'] == true).length} out of ${widget.listAnswer.length}', style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ...widget.listAnswer.map((e) => CheckQuestionWidget(
                      isCorrect: e['isCorrect'],
                      question: e['quiz'].question,
                      correctAnswer: e['quiz'].correctAnswer,
                    )).toList(),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton.icon(onPressed: (){
                Navigator.pop(context);
              }, icon:
                const Icon(Icons.refresh)
                , label:
                const Text('Play Again'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
