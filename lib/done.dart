

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  
 

 
  @override
  Widget build(BuildContext context) {
     Map map = ModalRoute.of(context)?.settings.arguments as Map;
   int score = map['score'];
    String  resultText;
    if (score >= 41) {
      resultText = 'You are awesome!';
      print(score);
    } else if (score >= 31) {
      resultText = 'Pretty likeable!';
      print(score);
    } else if (score >= 21) {
      resultText = 'You need to work more!';
    } else if (score >= 1) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(score);
    }
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/trofy.jpg",width: 100,height: 100,),
          Text(
           resultText,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            
          ),SizedBox(height: 20,) ,// //Text
          Text(
            'Score ' '$score',
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30,) ,//Text
          ElevatedButton(
                onPressed: (){
                   Navigator.pop(context);
                }, child: Text("Go back"))
          
        ], //<Widget>[]
      ), //Column
    )
    );
  }
}