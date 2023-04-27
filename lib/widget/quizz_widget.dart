import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:qzgame/model/quizz_model.dart';

class QuizzWidget extends StatefulWidget {
  final QuizModal quizModal;
  final Function(bool) answerQuestion;
    QuizzWidget({Key? key, required  this.quizModal, required this.answerQuestion }) : super(key: key);


  @override
  State<QuizzWidget> createState() => _QuizzWidgetState();
}

class _QuizzWidgetState extends State<QuizzWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<String> suffleList(List<String> options) {
    options.shuffle();
    return options;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(widget.quizModal.question,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            ...suffleList(widget.quizModal.options).map((e) =>
                ElevatedButton(
                  onPressed: () {
                    widget.answerQuestion(e == widget.quizModal.correctAnswer);
                  },
                  child: Text(e),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    onPrimary: Colors.white
                    ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                )),
          ],
        ),
      ),
    );
  }
}
