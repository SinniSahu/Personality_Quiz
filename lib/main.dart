import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  final _questions = const [
      {
        'questionText': 'How do your friends describe you?',
        'answers': [
          {'text' : 'Weird', 'score' : 1},
          {'text' : 'Smart', 'score' : 5},
          {'text' : 'Energetic', 'score' : 3},
          {'text' : 'Adventurous', 'score' : 4}
        ]
      },
      {
        'questionText': 'Do you like to work?',
        'answers': [
          {'text' : 'Yeah, usually', 'score' : 2},
          {'text' : 'only for money', 'score' : 4},
          {'text' : 'Nope', 'score' : 1},
          {'text' : 'Yes !!', 'score' : 5},
        ]
      },
      {
        'questionText': 'What do you like to do on weekend ?',
        'answers': [
          {'text' : 'Cook', 'score' : 5},
          {'text' : 'Sleep', 'score' : 4},
          {'text' : 'Go out or party', 'score' : 5},
          {'text' : 'Binge watch', 'score' : 3},
          
        ]
      },
      {
        'questionText': 'Relationship status?',
        'answers': [
          {'text' : 'Not intrested', 'score' : 5},
          {'text' : 'Only crush', 'score' : 3},
          {'text' : 'In a healthy relationship', 'score' : 5},
          {'text' : 'It\'s complcated', 'score' : 1},
          
        ]
      },
      {
        'questionText': 'Do you like pets?',
        'answers': [
          {'text' : 'Yes! they are cute', 'score' : 4},
          {'text' : 'NO!!', 'score' : 1},
          {'text' : 'Like them, but don\'t have time', 'score' : 3},
          {'text' : 'Obvioulsy. I love them', 'score' : 5},
          
        ]
      },
      {
        'questionText': 'What intrests you?',
        'answers': [
          {'text' : 'Nature', 'score' : 5},
          {'text' : 'I\'m up for anything', 'score' : 5},
          {'text' : 'Horror movies', 'score' : 4},
          {'text' : 'Social media world', 'score' : 1},
          
        ]
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _ansQue(int score) {

  _totalScore += score;

  if( _questionIndex < _questions.length){
       print('We have more questions');
  }
  else{
    print('over');
  }

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: _questionIndex < _questions.length
      ? Quiz(
        questions: _questions, 
        questionIndex: _questionIndex,
        ansQue: _ansQue)
      : Result(_totalScore, _resetQuiz)
    ));
  }
}



//      https://www.thequiz.com/only-real-anime-nerds-can-get-100-on-this-naruto-quiz/
//      https://www.zoo.com/quiz/the-vampire-diaries-quiz
// replace que with this