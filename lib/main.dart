import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myvalue1 = 2;
  int myvalue2 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 16,
        title: SelectableText("my ludo app"),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          myvalue1 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset("img/dice$myvalue1.png"))),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    myvalue2 = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("img/dice$myvalue2.png"),
              ))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
