import 'package:flutter/material.dart';

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleState();
}

class _AreaCircleState extends State<AreaCircle> {
  double pi = 3.14;
  double radius = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Area of Circle"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Enter the radius'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                radius = double.parse(value);
              }
          ),
          
          SizedBox(width:150,
          child: ElevatedButton(onPressed: (){
            setState(() {
                  result = pi * (radius*radius);
                });
          }, child: Text("Calculate"))),
          SizedBox(height: 8),
          Text("Result : $result")
        ],
      ),)
    );
  }
}