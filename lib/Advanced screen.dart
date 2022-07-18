

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Calclator.dart';


calc calclator = calc();
var myController1 = TextEditingController();
var myController2 = TextEditingController();
var myController3 = TextEditingController();

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text('Advanced Mathematics'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                  labelText: "Input 1",
                  hintText: "Enter Your Input.",
                  icon: Icon(Icons.input),
                  labelStyle: TextStyle(fontSize: 65),
                  hintStyle: TextStyle(fontSize: 40)),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: myController1,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: "Output",
                  icon: Icon(Icons.output),
                  fillColor: Colors.green,
                  labelStyle: TextStyle(fontSize: 65),
                  hintStyle: TextStyle(fontSize: 40)),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: myController3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  child: const Text('sqr'),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.SROOT();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  child: const Text('exp'),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.EXP();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  child: const Text('log'),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.LOG();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  child: const Text('sin'),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.Sin();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  child: const Text('cos'),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.Cos();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  child: const Text('tan'),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.Tan();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),

              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.amber,
                    child: const Text('asin'),
                    onPressed: () {
                      setState(() {
                        calclator.input1 = double.parse(myController1.text);
                        calclator.ASin();
                        myController3.text = calclator.out.toString();
                      });
                    },
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.amber,
                    child: const Text('acos'),
                    onPressed: () {
                      setState(() {
                        calclator.input1 = double.parse(myController1.text);
                        calclator.ACos();
                        myController3.text = calclator.out.toString();
                      });
                    },
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.amber,
                    child: const Text('atan'),
                    onPressed: () {
                      setState(() {
                        calclator.input1 = double.parse(myController1.text);
                        calclator.ATan();
                        myController3.text = calclator.out.toString();
                      });
                    },
                  ),]),

          ],
        ),
        floatingActionButton:  FloatingActionButton(
          child: const Text('Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}