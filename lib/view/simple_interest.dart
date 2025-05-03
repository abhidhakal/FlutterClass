import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  double principal = 0;
  double time = 0;
  double rate = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Enter your principal'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                principal = double.parse(value);
              }
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(labelText: 'Enter your time'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                time = double.parse(value);
              }
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(labelText: 'Enter your rate'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                rate = double.parse(value);
              }
          ),
          SizedBox(width:150,
          child: ElevatedButton(onPressed: (){
            setState(() {
                  result = (principal * rate * time)/100;
                });
          }, child: Text("Calculate"))),
          SizedBox(height: 8),
          Text("Result : $result")
        ],
      ),) 
    );
  }
}