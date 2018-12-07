import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());
Color colorBackground=Colors.yellow;
var rnd=new Random();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Center(
          child: new MyPage(),
        ),
      ),
    );
  }
}

class MyPage extends StatefulWidget{
  @override
  MyPageState createState() => new MyPageState();
}


class MyPageState extends State<MyPage>{
  void _changeBackgrColor(){
    setState(() {
      colorBackground=Color.fromARGB(rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(255));
    });
  }
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: (){
          _changeBackgrColor();
        },
      child: new Scaffold(
          backgroundColor: colorBackground,
          body: new Center(
              child: new Text('Hello Solid Software!')
          )
      )
    );
  }

}
