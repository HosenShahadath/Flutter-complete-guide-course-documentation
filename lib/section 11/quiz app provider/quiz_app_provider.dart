import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%2011/quiz%20app%20provider/model%203.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(QuizApp2());
}

class QuizApp2 extends StatelessWidget {
  const QuizApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Quiz(),
      child: MaterialApp(home: QuizPage()),
    );
  }
}

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    var quiz = Provider.of<Quiz>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Quiz App')),
      body:
          quiz.isQuizFinished
              ? Center(child: Text('Your score: ${quiz.totalScore}'))
              : Column(
                children: [
                  Text(quiz.questions[quiz.questionIndex]['questionText']),
                  ...(quiz.questions[quiz.questionIndex]['answers']
                          as List<Map<String, dynamic>>)
                      .map(
                        (answer) => ElevatedButton(
                          onPressed: () => quiz.answerQuestion(answer['score']),
                          child: Text(answer['text']),
                        ),
                      ).toList(),
                ],
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: quiz.resetQuiz,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
