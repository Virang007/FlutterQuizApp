import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


void startApp(){

  Future.delayed(Duration(seconds: 3),(){
    Navigator.pushReplacementNamed(context, "/home");
  });
}

@override
  void initState() {
    // TODO: implement initState
    startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/quiz.png",height: 200,width: 200,),
             SizedBox(height: 20,),
            Text("Simple Flutter Quiz",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("let's get started", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
             SizedBox(height: 40,),
            SpinKitPouringHourGlassRefined(
            color: Color.fromARGB(255, 3, 78, 153),
            size: 50.0,
                   )
          ],
        ),
      ),
    );
  }
}