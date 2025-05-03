import 'package:flutter/material.dart';

class ArmstrongNumber extends StatefulWidget {
  const ArmstrongNumber({super.key});

  @override
  State<ArmstrongNumber> createState() => _ArmstrongNumberState();
}

class _ArmstrongNumberState extends State<ArmstrongNumber> {
  String input = '';
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Armstrong Number Checker"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Enter a number'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                input = value;
              },
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    int? number = int.tryParse(input);
                    if (number == null) {
                      result = "Please enter a valid number.";
                    } else if (isArmstrong(number)) {
                      result = "$number is an Armstrong number.";
                    } else {
                      result = "$number is not an Armstrong number.";
                    }
                  });
                },
                child: Text("Check"),
              ),
            ),
            SizedBox(height: 16),
            Text("Result: $result"),
          ],
        ),
      ),
    );
  }

  bool isArmstrong(int num) {
    int originalNum = num;
    int result = 0;
    int n = num.toString().length;

    while (num > 0) {
      int digit = num % 10;
      result += _power(digit, n);
      num ~/= 10;
    }

    return result == originalNum;
  }

  int _power(int base, int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= base;
    }
    return result;
  }
}
