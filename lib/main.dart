import 'package:flutter/material.dart';
import 'package:magic_ball/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 128, 91, 194),
        body: GradientContainer(),
      ),
    ),
  );
}
