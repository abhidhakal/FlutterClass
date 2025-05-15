import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  // double principal = 0;
  // double time = 0;
  // double rate = 0;
  double result = 0;

  final firstController = TextEditingController(text: "10000");
  final secondController = TextEditingController(text: "2");
  final thirdController = TextEditingController(text: "11");

  // key
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Padding(padding: const EdgeInsets.all(16),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your principal'),
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   principal = double.parse(value);
                  // }
                  controller: firstController,
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "Please enter a number";
                    }
                    return null;
                  },
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your time',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.amber, width: 2)
                  )
                  ),
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   time = double.parse(value);
                  // }
                  controller: secondController,
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "Please enter a number";
                    }
                    return null;
                  },
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your rate',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.amber, width: 2)
                  )
                  ),
                  keyboardType: TextInputType.number,
                  // onChanged: (value) {
                  //   rate = double.parse(value);
                  // }
                  controller: thirdController,
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "Please enter a number";
                    }
                    return null;
                  },
              ),
              SizedBox(width:150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                onPressed: (){
                  if (myKey.currentState!.validate()){
                    double first = double.parse(firstController.text);
                    double second = double.parse(secondController.text);
                    setState(() {
                      result = first + second;
                    });
                  }
              }, child: Text("Calculate"))),
              SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  text: "Result:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "$result",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),),
      ) 
    );
  }
}