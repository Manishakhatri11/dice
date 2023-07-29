import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( diceapp());
}

class diceapp extends StatelessWidget {
  //const diceapp ({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: FirstPage() ,
    );
  }
}
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var  left_num = 1;
  var  right_num = 2;
  var CI = "assets/dice1.png";
  var CI2 = "assets/dice2.png";

  void roll(){
    int  left_num = Random().nextInt(6)+1;
    int  right_num = Random().nextInt(6)+1;
    setState(() {
      CI = "assets/dice$left_num.png";
      CI2 ="assets/dice$right_num.png";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice App'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: roll,
                  child: Image.asset(CI))),
              SizedBox(
                width: 30,
              ),
              Expanded(child: GestureDetector(
                onTap: roll,
                  child: Image.asset(CI2))),
            ],
          ),
        ],
      ),
    );
  }
}



