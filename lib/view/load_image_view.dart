import 'package:flutter/material.dart';

class LoadImageview extends StatefulWidget {
  const LoadImageview({super.key});

  @override
  State<LoadImageview> createState() => _LoadImageviewState();
}

class _LoadImageviewState extends State<LoadImageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1F1F),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.height * .3,
              child: Image.asset('assets/images/dark.png'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.height * .3,
              child: Image.asset('assets/images/light.png'),
            )
          ],
        )
        ),
    );
  }
}