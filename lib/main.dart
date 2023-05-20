// ignore_for_file: prefer_const_constructors

import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Calculator(),
    ));

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        // input output area
        Expanded(
            child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(12),
          // color: Colors.orange,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Input",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Output",
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
        )),
        Row(
          children: [
            button(
                text: "AC", buttonbgcolor: operatorColor, tcolor: orangecolor),
            button(text: "<"),
            button(text: ""),
            button(text: "/", tcolor: orangecolor, buttonbgcolor: operatorColor)
          ],
        ),
        Row(
          children: [
            button(text: "7"),
            button(text: "8"),
            button(text: "9"),
            button(text: "x", tcolor: orangecolor, buttonbgcolor: operatorColor)
          ],
        ),
        Row(
          children: [
            button(text: "4"),
            button(text: "5"),
            button(text: "6"),
            button(text: "-", tcolor: orangecolor, buttonbgcolor: operatorColor)
          ],
        ),
        Row(
          children: [
            button(text: "1"),
            button(text: "2"),
            button(text: "3"),
            button(text: "+", tcolor: orangecolor, buttonbgcolor: operatorColor)
          ],
        ),
        Row(
          children: [
            button(
                text: "%", tcolor: orangecolor, buttonbgcolor: operatorColor),
            button(text: "0"),
            button(text: "."),
            button(text: "=", buttonbgcolor: orangecolor)
          ],
        ),
      ]),
    );
  }

  Widget button({text, tcolor = Colors.white, buttonbgcolor = buttonColor}) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(22),
          primary: buttonbgcolor,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: tcolor,
          ),
        ),
      ),
    ));
  }
}
