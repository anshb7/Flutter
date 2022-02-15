// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questiontext': 'Who\'s the ceo of Tesla?',
      'answers': [
        {'text': 'Mark Zuckerberg', 'score': 0},
        {'text': 'Elon Musk', 'score': 10},
        {'text': 'Sergey Brin', 'score': 0},
        {'text': 'Peter Thiel', 'score': 0},
      ],
    },
    {
      'questiontext': 'Who\'s the ceo of Apple?',
      'answers': [
        {'text': 'Mark Zuckerberg', 'score': 0},
        {'text': 'Elon Musk', 'score': 0},
        {'text': 'Sergey Brin', 'score': 0},
        {'text': 'Tim Cook', 'score': 10},
      ],
    },
    {
      'questiontext': 'Which company has the tagline "THINK DIFFERENT"?',
      'answers': [
        {'text': 'Samsung', 'score': 0},
        {'text': 'Philips', 'score': 0},
        {'text': 'Apple', 'score': 10},
        {'text': 'Google', 'score': 0},
      ],
    },
    {
      'questiontext': 'In which language is whatsapp written?',
      'answers': [
        {'text': 'Erlang', 'score': 10},
        {'text': 'Python', 'score': 0},
        {'text': 'Java', 'score': 0},
        {'text': 'Go', 'score': 0},
      ],
    },
    {
      'questiontext':
          'Who is largely responsible for breaking the German Enigma codes, created a test that provided a foundation for artificial intelligence?',
      'answers': [
        {'text': 'Jeff Bezos', 'score': 0},
        {'text': 'Alan Turing', 'score': 10},
        {'text': 'Charles Babbage', 'score': 0},
        {'text': 'Ajay V Bhatt', 'score': 0},
      ],
    },
  ];
  var _totalscore = 0;

  var _questionindex = 0;
  void resetquiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  void _answerquestion(int score) {
    _totalscore = _totalscore + score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
    // ignore: avoid_print
    print(_questionindex);
    if (_questionindex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more Questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QUIZ APP'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerquestion: _answerquestion,
                questionindex: _questionindex,
                questions: _questions,
              )
            : Result(_totalscore, resetquiz),
      ),
    );
  }
}
