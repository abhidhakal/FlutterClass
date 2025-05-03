import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  int first = 0;
  int second = 0;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Enter first number'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = int.parse(value);
              },
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(hintText: 'Enter second number'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = int.parse(value);
              },
            ),
            SizedBox(),
            SizedBox(
              width: 150,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  result = first + second;
                });
              }, child: Text("Add")),
            ),
            SizedBox(height: 8),
            Text("Result : $result"),
          ],
        ),
      );
  }
}