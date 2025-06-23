import 'package:flutter/material.dart';

void main(){
  //Center is widget, Text is widget 

  runApp( 
          MaterialApp(
          home: Scaffold(
        body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text('Origin Text class',
              style: TextStyle(fontSize: 20, color: Colors.blue),
              textDirection: TextDirection.rtl,
              ),
    //Custom Text
              MyText(text: 'Custom Text'),
              ]
          ),
  ))));
}

//StateLessWidget: widget which do not have "state" ( property which has been changed <-> User Interface)

class MyText extends StatelessWidget{
  final String text;
  final double fontSize;
  final TextDirection textDirection;
  final Color color;

  const MyText({
          required this.text, 
          this.fontSize = 50,
          this.textDirection =  TextDirection.ltr,
          this.color = Colors.green,
          });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color:  color),
      textDirection: textDirection,
      );
  }
}