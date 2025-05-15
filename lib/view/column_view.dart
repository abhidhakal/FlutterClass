import 'package:flutter/material.dart';

class ColumnView extends StatefulWidget {
  const ColumnView({super.key});

  @override
  State<ColumnView> createState() => _ColumnViewState();
}

class _ColumnViewState extends State<ColumnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(Icons.star, size: 50),
            Icon(Icons.star, size: 50),
            Spacer(),
            Icon(Icons.star, size: 50),
          ],
        ),
        ),
    );
  }
}