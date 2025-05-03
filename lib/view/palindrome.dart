import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
}

bool isPalindrome(String input) {
  String cleaned = input.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  String reversed = cleaned.split('').reversed.join('');
  return cleaned == reversed;
}

class _PalindromeState extends State<Palindrome> {
  String word = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Palindrome Checker"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Enter the word'),
              onChanged: (value) {
                word = value;
              }
          ),
          
          SizedBox(width:150,
          child: ElevatedButton(onPressed: (){
            setState(() {
                  if (isPalindrome(word)) {
                    result = "$word, is a palindrome";
                  } else {
                    result = "$word, is not a palindrome";
                  }
                });
          }, child: Text("Calculate"))),
          SizedBox(height: 8),
          Text("Result : $result")
        ],
      ),) 
    );
  }
}