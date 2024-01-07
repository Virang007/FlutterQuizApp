import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/done.dart';
import 'package:flutter_application_1/loading.dart';
 
import './quiz.dart';
import './result.dart';
 
void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    "/":(context) => Loading(),
    "/home":(context) => MyApp(),
    "/done":(context) => Done(),
    
  },
));
 


