import 'package:flutter/material.dart';

showMySnackBar(
  {required BuildContext context,
  required String content,
  Color? color,
  }
){
  return ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(content),
                    backgroundColor: color ?? Color(0xFFF5F5F5),
                    behavior: SnackBarBehavior.floating,
                    ),
                );

}