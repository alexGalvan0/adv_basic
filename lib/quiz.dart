import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(context) {

    final screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchScreen)
        : const QuestionsScreen();

    const colors = [Colors.purple, Colors.deepPurpleAccent];

    return (MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: colors,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
            child: screenWidget),
      ),
    ));
  }
}
