import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: ContainerWidget(Color.fromARGB(255, 47, 227, 247),
              Color.fromARGB(255, 59, 246, 168))),
    ),
  );
}
