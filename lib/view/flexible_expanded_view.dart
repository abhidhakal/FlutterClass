import 'package:first_program/common/my_snackbar.dart';
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
              onTap: () {
                showMySnackBar(context: context, content: "Container 1 tapped");
              },
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
              onDoubleTap: () {
                showMySnackBar(context: context, content: "Container 2 tapped");
              },
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