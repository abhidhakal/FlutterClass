import 'package:first_program/view/area_circle.dart';
import 'package:first_program/view/armstrong_number.dart';
import 'package:first_program/view/palindrome.dart';
import 'package:first_program/view/simple_interest.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded( // ensures that the Column takes up the available space on the screen
          child: Column(
            children: [
              SizedBox(
                width: 200,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SimpleInterest()),
                  );
                },
                child: Text("Simple Interest"),
              ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => AreaCircle()),
                  );
                },
                child: Text("Area of Circle"),
              ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Palindrome()),
                  );
                },
                child: Text("Palindrome"),
              ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ArmstrongNumber()),
                  );
                },
                child: Text("Armstrong Number"),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
