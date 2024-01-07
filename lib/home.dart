import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
 
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Which programming language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programming language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
     {
      'questionText': 'Q5. What is a widget in Flutter?',
      'answers': [
        {'text': 'A visual element in the user interface', 'score': 10},
        {'text': 'A block of code that performs a specific task', 'score': -2},
        {'text': 'A method for handling user input', 'score': -2},
        {'text': 'A type of data structure', 'score': -2},
      ],
    },
    {
      'questionText': 'Q6. Which widget is used to create a button in Flutter?',
      'answers': [
        {'text': 'RaisedButton', 'score': 10},
        {'text': 'Text', 'score': -2},
        {'text': 'Image', 'score': -2},
        {'text': 'IconButton', 'score': -2},
      ],
    },
    {
      'questionText': 'Q7.Which widget is used to create a tab bar in Flutter?',
      'answers': [
        {'text': 'TabLayout', 'score': -2},
        {'text': 'TabBarWidget', 'score': -2},
        {'text': 'TabBar', 'score': 10},
        {'text': 'NavigationTabBar', 'score': -2},
      ],
    },
     {
      'questionText': 'Q8.Which widget is used to create a list in Flutter?',
      'answers': [
        {'text': ' ListWidget', 'score': -2},
        {'text': ' ListLayout', 'score': -2},
        {'text': 'ListView', 'score': 10},
        {'text': 'ListContainer', 'score': -2},
      ],
    },
    {
      'questionText': 'Q9.Which widget is used to create a grid in Flutter?',
      'answers': [
        {'text': '  GridView', 'score': 10},
        {'text': ' GridWidget', 'score': -2},
        {'text': 'GridLayout', 'score': -2},
        {'text': 'GridContainer', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q10. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
    },
  ];
 
  var _questionIndex = 0;
  var _totalScore = 0;
 
  void _resetQuiz() {
     setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
 
  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
 
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
   
     
      Navigator.pushNamed(context, "/done" ,arguments: {
        "score":_totalScore
        
      });

       _resetQuiz();
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QuizApp'),
          backgroundColor: Color.fromARGB(255, 3, 78, 153),
        ),
        body: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child:_questionIndex < _questions.length ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    ): Result(_totalScore, _resetQuiz),
            ),
          ],
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}