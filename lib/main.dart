import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 247, 36, 8),
          const Color.fromARGB(255, 57, 106, 54)),
      ),
    ),
  );
}





