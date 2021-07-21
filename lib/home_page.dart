import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  var textController1 = TextEditingController();
  var textController2 = TextEditingController();

  void addition() {
    setState(() {
      num1 = int.parse(textController1.text);
      num2 = int.parse(textController2.text);
      sum = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(textController1.text);
      num2 = int.parse(textController2.text);
      sum = num1 - num2;
    });
  }

  void multi() {
    setState(() {
      num1 = int.parse(textController1.text);
      num2 = int.parse(textController2.text);
      sum = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(textController1.text);
      num2 = int.parse(textController2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      textController1.text = '0' ;
      textController2.text = '0' ;
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator App',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OUTPUT: $sum',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: textController1,
                  decoration: InputDecoration(
                    hintText: 'Enter 1st number',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: textController2,
                  decoration: InputDecoration(
                    hintText: 'Enter 2nd number',
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      child: Text(
                        '+',
                      ),
                      onPressed: addition,
                      color: Colors.greenAccent,
                    ),
                    MaterialButton(
                      child: Text(
                        '-',
                      ),
                      onPressed: subtraction,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      child: Text(
                        '*',
                      ),
                      onPressed: multi,
                      color: Colors.greenAccent,
                    ),
                    MaterialButton(
                      child: Text(
                        '/',
                      ),
                      onPressed: division,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      child: Text(
                        'Clear',
                      ),
                      onPressed: clear,
                      color: Colors.greenAccent,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
