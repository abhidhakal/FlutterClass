import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () => print("Container 1 tapped"),
              child: Container(
                width: double.infinity,
                color: Colors.blueGrey,
                alignment: Alignment.center,
                child: const Text("Container 1",style: TextStyle(fontSize: 50, color: Colors.black),),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onDoubleTap: () => print("Container 2 double tapped"),
              child: Container(
                width: double.infinity,
                color: Colors.redAccent,
                alignment: Alignment.center,
                child: const Text("Container 2",style: TextStyle(fontSize: 50, color: Colors.black),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}