import 'package:first_program/model/arithmetic_model.dart';
import 'package:flutter/material.dart';

class ArithmeticScreenState extends StatefulWidget {
  const ArithmeticScreenState({super.key});

  @override
  State<ArithmeticScreenState> createState() => _ArithmeticScreenStateState();
}

class _ArithmeticScreenStateState extends State<ArithmeticScreenState> {
  late ArithmeticModel arithmeticModel;
  final _globalKey = GlobalKey<FormState>();

  final firstController = TextEditingController();
  final secondController = TextEditingController();

  String? groupValue = 'add'; // Default to a valid option
  int result = 0;

  void calculate() {
    arithmeticModel = ArithmeticModel(
      first: int.parse(firstController.text),
      second: int.parse(secondController.text),
    );

    setState(() {
      if (groupValue == "add") {
        result = arithmeticModel.add();
      } else if (groupValue == "subtract") {
        result = arithmeticModel.subtract();
      } else if (groupValue == "multiply") {
        result = arithmeticModel.multiply();
      } else if (groupValue == "divide") {
        result = arithmeticModel.divide().toInt();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic Screen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _globalKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'First Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: firstController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Second Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: secondController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a number";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                ListTile(
                  title: const Text('Add'),
                  leading: Radio(
                    value: 'add',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Subtract'),
                  leading: Radio(
                    value: 'subtract',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Multiply'),
                  leading: Radio(
                    value: 'multiply',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Divide'),
                  leading: Radio(
                    value: 'divide',
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        calculate();
                      }
                    },
                    child: const Text("Calculate"),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Result : $result",
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
