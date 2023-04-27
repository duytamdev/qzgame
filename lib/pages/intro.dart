import 'package:flutter/material.dart';

import 'game.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void startQuiz() {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GamePage()));
    }
    return  Container(
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Opacity(
                opacity: 0.6,
                child:  Image(image: AssetImage('assets/images/quiz-logo.png'), width: 200)),
            const SizedBox(height: 50
            ),
            const Text('Learn Flutter the fun way!', style: TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 20),
            ElevatedButton(onPressed:startQuiz , style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ), child: const Text('Start Quiz'),),
          ],
        )
      ),
    );
  }
}
