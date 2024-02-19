import 'package:calculator/screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const SimpleCalculator(),
    );
  }
}
