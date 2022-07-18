

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Advanced screen.dart';
import 'Calclator.dart';


calc calclator = calc();
var myController1 = TextEditingController();
var myController2 = TextEditingController();
var myController3 = TextEditingController();


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calclator'),
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
                  labelText: "Input 2",
                  hintText: "Enter Your Input.",
                  icon: Icon(Icons.input),
                  labelStyle: TextStyle(fontSize: 65),
                  hintStyle: TextStyle(fontSize: 40)),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: myController2,
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
                  child: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.input2 = double.parse(myController2.text);
                      calclator.add();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.input2 = double.parse(myController2.text);
                      calclator.sub();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.star_rate_rounded),
                  onPressed: () {
                    calclator.input1 = double.parse(myController1.text);
                    calclator.input2 = double.parse(myController2.text);
                    calclator.mul();
                    myController3.text = calclator.out.toString();
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.purple,
                  child: Icon(Icons.safety_divider),
                  onPressed: () {
                    setState(() {
                      calclator.input1 = double.parse(myController1.text);
                      calclator.input2 = double.parse(myController2.text);
                      calclator.div();
                      myController3.text = calclator.out.toString();
                    });
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.cyan,
                  child: const Text('Perc'),
                  onPressed: () {
                    calclator.input1 = double.parse(myController1.text);
                    calclator.input2 = double.parse(myController2.text);
                    calclator.mod();
                    myController3.text = calclator.out.toString();
                  },
                ),
                FloatingActionButton(
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.arrow_drop_up_outlined),
                  onPressed: () {
                    calclator.input1 = double.parse(myController1.text);
                    calclator.input2 = double.parse(myController2.text);
                    calclator.Power();
                    myController3.text = calclator.out.toString();
                  },
                )
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('More'),
          onPressed: () {
            //right way: use context in below level tree with MaterialApp
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => screen2()));
          },
        ),
      ),
    );
  }
}