import 'package:flutter/material.dart';

import 'pages/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      // const is a keyword that tells Dart to make a compile-time constant.
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 33, 5, 109),
            const Color.fromARGB(255, 68, 21, 149)),
      ),
    ),
  ); // runApp
}
